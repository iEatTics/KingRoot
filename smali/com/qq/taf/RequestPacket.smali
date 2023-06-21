.class public final Lcom/qq/taf/RequestPacket;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bDN:[B

.field static bDO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic lo:Z


# instance fields
.field public bDD:S

.field public bDE:B

.field public bDF:I

.field public bDG:I

.field public bDH:Ljava/lang/String;

.field public bDI:Ljava/lang/String;

.field public bDJ:[B

.field public bDK:I

.field public bDL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bDM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    const-class v0, Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/qq/taf/RequestPacket;->lo:Z

    .line 90
    sput-object v1, Lcom/qq/taf/RequestPacket;->bDN:[B

    .line 91
    sput-object v1, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 7
    iput-short v0, p0, Lcom/qq/taf/RequestPacket;->bDD:S

    .line 9
    iput-byte v0, p0, Lcom/qq/taf/RequestPacket;->bDE:B

    .line 11
    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDF:I

    .line 13
    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDG:I

    .line 15
    iput-object v1, p0, Lcom/qq/taf/RequestPacket;->bDH:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/qq/taf/RequestPacket;->bDI:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDK:I

    .line 29
    return-void
.end method

.method public constructor <init>(SBIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SBII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 7
    iput-short v0, p0, Lcom/qq/taf/RequestPacket;->bDD:S

    .line 9
    iput-byte v0, p0, Lcom/qq/taf/RequestPacket;->bDE:B

    .line 11
    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDF:I

    .line 13
    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDG:I

    .line 15
    iput-object v1, p0, Lcom/qq/taf/RequestPacket;->bDH:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/qq/taf/RequestPacket;->bDI:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDK:I

    .line 33
    iput-short p1, p0, Lcom/qq/taf/RequestPacket;->bDD:S

    .line 34
    iput-byte p2, p0, Lcom/qq/taf/RequestPacket;->bDE:B

    .line 35
    iput p3, p0, Lcom/qq/taf/RequestPacket;->bDF:I

    .line 36
    iput p4, p0, Lcom/qq/taf/RequestPacket;->bDG:I

    .line 37
    iput-object p5, p0, Lcom/qq/taf/RequestPacket;->bDH:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/qq/taf/RequestPacket;->bDI:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/qq/taf/RequestPacket;->bDJ:[B

    .line 40
    iput p8, p0, Lcom/qq/taf/RequestPacket;->bDK:I

    .line 41
    iput-object p9, p0, Lcom/qq/taf/RequestPacket;->bDL:Ljava/util/Map;

    .line 42
    iput-object p10, p0, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :cond_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 70
    sget-boolean v1, Lcom/qq/taf/RequestPacket;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 47
    check-cast p1, Lcom/qq/taf/RequestPacket;

    .line 49
    iget-short v1, p1, Lcom/qq/taf/RequestPacket;->bDD:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-byte v1, p1, Lcom/qq/taf/RequestPacket;->bDE:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget v1, p1, Lcom/qq/taf/RequestPacket;->bDF:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget v1, p1, Lcom/qq/taf/RequestPacket;->bDG:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/qq/taf/RequestPacket;->bDH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/qq/taf/RequestPacket;->bDI:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/qq/taf/RequestPacket;->bDJ:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget v1, p1, Lcom/qq/taf/RequestPacket;->bDK:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/qq/taf/RequestPacket;->bDL:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 48
    goto :goto_0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-short v0, p0, Lcom/qq/taf/RequestPacket;->bDD:S

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/qq/taf/RequestPacket;->bDD:S

    .line 97
    iget-byte v0, p0, Lcom/qq/taf/RequestPacket;->bDE:B

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/qq/taf/RequestPacket;->bDE:B

    .line 98
    iget v0, p0, Lcom/qq/taf/RequestPacket;->bDF:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDF:I

    .line 99
    iget v0, p0, Lcom/qq/taf/RequestPacket;->bDG:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDG:I

    .line 100
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/RequestPacket;->bDH:Ljava/lang/String;

    .line 101
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/RequestPacket;->bDI:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/qq/taf/RequestPacket;->bDN:[B

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/qq/taf/RequestPacket;->bDN:[B

    .line 105
    :cond_0
    sget-object v0, Lcom/qq/taf/RequestPacket;->bDN:[B

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/RequestPacket;->bDJ:[B

    .line 106
    iget v0, p0, Lcom/qq/taf/RequestPacket;->bDK:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/qq/taf/RequestPacket;->bDK:I

    .line 107
    sget-object v0, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    .line 109
    sget-object v0, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    sget-object v0, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/qq/taf/RequestPacket;->bDL:Ljava/util/Map;

    .line 112
    sget-object v0, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    .line 114
    sget-object v0, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    sget-object v0, Lcom/qq/taf/RequestPacket;->bDO:Ljava/util/Map;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestPacket decode error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qq/taf/RequestPacket;->bDJ:[B

    invoke-static {v3}, Lcom/qq/jce/wup/WupHexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 77
    iget-short v0, p0, Lcom/qq/taf/RequestPacket;->bDD:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 78
    iget-byte v0, p0, Lcom/qq/taf/RequestPacket;->bDE:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 79
    iget v0, p0, Lcom/qq/taf/RequestPacket;->bDF:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 80
    iget v0, p0, Lcom/qq/taf/RequestPacket;->bDG:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 81
    iget-object v0, p0, Lcom/qq/taf/RequestPacket;->bDH:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/qq/taf/RequestPacket;->bDI:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/qq/taf/RequestPacket;->bDJ:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 84
    iget v0, p0, Lcom/qq/taf/RequestPacket;->bDK:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 85
    iget-object v0, p0, Lcom/qq/taf/RequestPacket;->bDL:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 86
    iget-object v0, p0, Lcom/qq/taf/RequestPacket;->bDM:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 88
    return-void
.end method
