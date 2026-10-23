# Common practices for interoperable LinkML schemas in the bioimaging community

Several projects in the bioimaging community have adopted or are on the
verge of adopting LinkML as the schema definition language of choice to
formally describe imaging (meta)data. For example, the QUAREP-LiMi
Consortium is migrating its model for image acquisition metadata from
XML Schema to LinkML; the Imaging-PHD project will use LinkML to define
its Persistent Hardware Descriptors; and LinkML is under consideration
to define at least parts of the Next Generation File Format (OME-NGFF,
aka “OME-Zarr”).

This broadening adoption creates a need to ensure that independently
developed LinkML schemas are interoperable. To that effect, we are
establishing a set of guidelines and recommendations for schema authors,
that we propose as a complement to LinkML’s own documentation. The
guidelines aim to promote schemas that are easily reusable, composable,
and extensible while preserving backward, and ideally forward,
compatibility.
