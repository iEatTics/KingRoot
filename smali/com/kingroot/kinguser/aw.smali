.class public final Lcom/kingroot/kinguser/aw;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static jT:Lcom/kingroot/kinguser/au;


# instance fields
.field public jQ:Lcom/kingroot/kinguser/au;

.field public jR:Ljava/lang/String;

.field public jS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/kingroot/kinguser/au;

    invoke-direct {v0}, Lcom/kingroot/kinguser/au;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aw;->jT:Lcom/kingroot/kinguser/au;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aw;->jQ:Lcom/kingroot/kinguser/au;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aw;->jR:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aw;->jS:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/aw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aw;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 37
    sget-object v0, Lcom/kingroot/kinguser/aw;->jT:Lcom/kingroot/kinguser/au;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/au;

    iput-object v0, p0, Lcom/kingroot/kinguser/aw;->jQ:Lcom/kingroot/kinguser/au;

    .line 38
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aw;->jR:Ljava/lang/String;

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aw;->jS:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/aw;->jQ:Lcom/kingroot/kinguser/au;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/aw;->jR:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/aw;->jS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/aw;->jS:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 27
    :cond_0
    return-void
.end method
