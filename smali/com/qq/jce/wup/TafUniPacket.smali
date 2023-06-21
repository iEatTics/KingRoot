.class public Lcom/qq/jce/wup/TafUniPacket;
.super Lcom/qq/jce/wup/UniPacket;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->bDD:S

    .line 17
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput-byte v2, v0, Lcom/qq/taf/RequestPacket;->bDE:B

    .line 18
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput v2, v0, Lcom/qq/taf/RequestPacket;->bDF:I

    .line 19
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput v2, v0, Lcom/qq/taf/RequestPacket;->bDK:I

    .line 20
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    new-array v1, v2, [B

    iput-object v1, v0, Lcom/qq/taf/RequestPacket;->bDJ:[B

    .line 21
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/qq/taf/RequestPacket;->bDL:Ljava/util/Map;

    .line 22
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEncodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/qq/jce/wup/UniPacket;->getEncodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJceStruct(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/qq/jce/wup/UniPacket;->getJceStruct(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTafBuffer()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->bDJ:[B

    return-object v0
.end method

.method public getTafContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->bDL:Ljava/util/Map;

    return-object v0
.end method

.method public getTafMessageType()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget v0, v0, Lcom/qq/taf/RequestPacket;->bDF:I

    return v0
.end method

.method public getTafPacketType()B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget-byte v0, v0, Lcom/qq/taf/RequestPacket;->bDE:B

    return v0
.end method

.method public getTafResultCode()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;

    const-string v1, "STATUS_RESULT_CODE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTafResultDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;

    const-string v1, "STATUS_RESULT_DESC"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-object v0

    .line 138
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTafStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;

    return-object v0
.end method

.method public getTafTimeout()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget v0, v0, Lcom/qq/taf/RequestPacket;->bDK:I

    return v0
.end method

.method public getTafVersion()S
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iget-short v0, v0, Lcom/qq/taf/RequestPacket;->bDD:S

    return v0
.end method

.method public bridge synthetic setEncodeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    return-void
.end method

.method public setTafBuffer([B)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->bDJ:[B

    .line 59
    return-void
.end method

.method public setTafContext(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->bDL:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public setTafMessageType(I)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput p1, v0, Lcom/qq/taf/RequestPacket;->bDF:I

    .line 45
    return-void
.end method

.method public setTafPacketType(B)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput-byte p1, v0, Lcom/qq/taf/RequestPacket;->bDE:B

    .line 38
    return-void
.end method

.method public setTafStatus(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public setTafTimeout(I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput p1, v0, Lcom/qq/taf/RequestPacket;->bDK:I

    .line 52
    return-void
.end method

.method public setTafVersion(S)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->bDz:Lcom/qq/taf/RequestPacket;

    iput-short p1, v0, Lcom/qq/taf/RequestPacket;->bDD:S

    .line 30
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/qq/jce/wup/TafUniPacket;->useVersion3()V

    .line 31
    :cond_0
    return-void
.end method
