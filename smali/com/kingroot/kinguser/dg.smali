.class public final Lcom/kingroot/kinguser/dg;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z

.field static lw:Lcom/kingroot/kinguser/df;


# instance fields
.field public softkey:Lcom/kingroot/kinguser/df;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/kingroot/kinguser/dg;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/dg;->lo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/dg;->softkey:Lcom/kingroot/kinguser/df;

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/dg;->softkey:Lcom/kingroot/kinguser/df;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dg;->a(Lcom/kingroot/kinguser/df;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/df;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/dg;->softkey:Lcom/kingroot/kinguser/df;

    .line 40
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/dg;->a(Lcom/kingroot/kinguser/df;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/df;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/kingroot/kinguser/dg;->softkey:Lcom/kingroot/kinguser/df;

    .line 31
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :cond_0
    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 76
    sget-boolean v1, Lcom/kingroot/kinguser/dg;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 101
    iget-object v1, p0, Lcom/kingroot/kinguser/dg;->softkey:Lcom/kingroot/kinguser/df;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 102
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_0
    check-cast p1, Lcom/kingroot/kinguser/dg;

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/dg;->softkey:Lcom/kingroot/kinguser/df;

    iget-object v1, p1, Lcom/kingroot/kinguser/dg;->softkey:Lcom/kingroot/kinguser/df;

    .line 52
    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    sget-object v0, Lcom/kingroot/kinguser/dg;->lw:Lcom/kingroot/kinguser/df;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/kingroot/kinguser/df;

    invoke-direct {v0}, Lcom/kingroot/kinguser/df;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/dg;->lw:Lcom/kingroot/kinguser/df;

    .line 94
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/dg;->lw:Lcom/kingroot/kinguser/df;

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/df;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dg;->a(Lcom/kingroot/kinguser/df;)V

    .line 96
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/dg;->softkey:Lcom/kingroot/kinguser/df;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 84
    return-void
.end method
