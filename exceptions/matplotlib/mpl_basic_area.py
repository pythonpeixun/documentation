import matplotlib.pyplot as plt
import plotly.plotly as py
py.sign_in('theengineear', 'o9zlr0hy6z')

fig, ax = plt.subplots()
ax.plot([2,1,3,1,2])

update = {'data':[{'fill': 'tozeroy'}]}  # this updates the plotly figure
plot_url = py.plot_mpl(fig, update=update, filename='mpl-basic-area')
