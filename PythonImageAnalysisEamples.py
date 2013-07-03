from PIL import Image
import numpy as np
a = Image.open("C:\Users\LWu\Desktop\Lincoln_1863.png")
ndarr = np.array(a)
nndarr = 1.0*ndarr/(np.max(ndarr)) 		# normalize to 0,1 scale
rndarr = ndarr[:,ndarr.shape[1]:0:-1]	# flip array
irdnarr = Image.fromarray(rndarr)		# turn from array to image