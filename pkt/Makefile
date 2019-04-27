#
# OB Simple Makefile to convert packets in images
#
PKT2SVG= ../util/packet2svg.py
SVG2PNG= ../util/convertpkt.sh

SVGFILES := $(patsubst %.pkt,%.svg,$(wildcard *.pkt))
PDFFILES := $(patsubst %.pkt,%.pdf,$(wildcard *.pkt))
PNGFILES := $(patsubst %.pkt,%.png,$(wildcard *.pkt))

%.svg: %.pkt
	$(PKT2SVG) $<

%.png: %.svg
	@echo converting $<
	$(SVG2PNG) $<

images: ${SVGFILES} ${PNGFILES}
	@echo "All images converted"

clean:
	rm ${PNGFILES}
	rm ${PDFFILES}
	rm ${SVGFILES}
