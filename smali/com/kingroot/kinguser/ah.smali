.class public final Lcom/kingroot/kinguser/ah;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static hd:Lcom/kingroot/kinguser/n;

.field static ho:Lcom/kingroot/kinguser/ag;

.field static hp:Lcom/kingroot/kinguser/y;


# instance fields
.field public gT:I

.field public gU:Lcom/kingroot/kinguser/n;

.field public gV:I

.field public gW:I

.field public gX:Ljava/lang/String;

.field public gY:Z

.field public gZ:Lcom/kingroot/kinguser/ag;

.field public ha:Z

.field public hb:Lcom/kingroot/kinguser/y;

.field public hc:I

.field public newFeature:Ljava/lang/String;

.field public newVersionCode:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->url:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/ah;->gT:I

    .line 12
    iput-object v2, p0, Lcom/kingroot/kinguser/ah;->gU:Lcom/kingroot/kinguser/n;

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/ah;->gV:I

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/ah;->newVersionCode:I

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/ah;->gW:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->newFeature:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->gX:Ljava/lang/String;

    .line 18
    iput-boolean v3, p0, Lcom/kingroot/kinguser/ah;->gY:Z

    .line 19
    iput-object v2, p0, Lcom/kingroot/kinguser/ah;->gZ:Lcom/kingroot/kinguser/ag;

    .line 20
    iput-boolean v3, p0, Lcom/kingroot/kinguser/ah;->ha:Z

    .line 21
    iput-object v2, p0, Lcom/kingroot/kinguser/ah;->hb:Lcom/kingroot/kinguser/y;

    .line 22
    iput v1, p0, Lcom/kingroot/kinguser/ah;->hc:I

    .line 25
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->url:Ljava/lang/String;

    .line 75
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gT:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ah;->gT:I

    .line 76
    sget-object v0, Lcom/kingroot/kinguser/ah;->hd:Lcom/kingroot/kinguser/n;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/kingroot/kinguser/n;

    invoke-direct {v0}, Lcom/kingroot/kinguser/n;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ah;->hd:Lcom/kingroot/kinguser/n;

    .line 79
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ah;->hd:Lcom/kingroot/kinguser/n;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/n;

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->gU:Lcom/kingroot/kinguser/n;

    .line 80
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gV:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ah;->gV:I

    .line 81
    iget v0, p0, Lcom/kingroot/kinguser/ah;->newVersionCode:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ah;->newVersionCode:I

    .line 82
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gW:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ah;->gW:I

    .line 83
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->newFeature:Ljava/lang/String;

    .line 84
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->gX:Ljava/lang/String;

    .line 85
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ah;->gY:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ah;->gY:Z

    .line 86
    sget-object v0, Lcom/kingroot/kinguser/ah;->ho:Lcom/kingroot/kinguser/ag;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/kingroot/kinguser/ag;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ag;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ah;->ho:Lcom/kingroot/kinguser/ag;

    .line 89
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ah;->ho:Lcom/kingroot/kinguser/ag;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ag;

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->gZ:Lcom/kingroot/kinguser/ag;

    .line 90
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ah;->ha:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ah;->ha:Z

    .line 91
    sget-object v0, Lcom/kingroot/kinguser/ah;->hp:Lcom/kingroot/kinguser/y;

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Lcom/kingroot/kinguser/y;

    invoke-direct {v0}, Lcom/kingroot/kinguser/y;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ah;->hp:Lcom/kingroot/kinguser/y;

    .line 94
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/ah;->hp:Lcom/kingroot/kinguser/y;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/y;

    iput-object v0, p0, Lcom/kingroot/kinguser/ah;->hb:Lcom/kingroot/kinguser/y;

    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/ah;->hc:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ah;->hc:I

    .line 96
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 31
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gT:I

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gT:I

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->gU:Lcom/kingroot/kinguser/n;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->gU:Lcom/kingroot/kinguser/n;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 37
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gV:I

    if-eqz v0, :cond_3

    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gV:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 40
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/ah;->newVersionCode:I

    if-eqz v0, :cond_4

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/ah;->newVersionCode:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 43
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gW:I

    if-eqz v0, :cond_5

    .line 44
    iget v0, p0, Lcom/kingroot/kinguser/ah;->gW:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->newFeature:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->newFeature:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 49
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->gX:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->gX:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 52
    :cond_7
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ah;->gY:Z

    if-eq v0, v2, :cond_8

    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ah;->gY:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 55
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->gZ:Lcom/kingroot/kinguser/ag;

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->gZ:Lcom/kingroot/kinguser/ag;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 58
    :cond_9
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ah;->ha:Z

    if-eq v0, v2, :cond_a

    .line 59
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ah;->ha:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 61
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->hb:Lcom/kingroot/kinguser/y;

    if-eqz v0, :cond_b

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/ah;->hb:Lcom/kingroot/kinguser/y;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 64
    :cond_b
    iget v0, p0, Lcom/kingroot/kinguser/ah;->hc:I

    if-eqz v0, :cond_c

    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/ah;->hc:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 67
    :cond_c
    return-void
.end method
