.class public Lcom/kingroot/kinguser/hw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/hw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mVersion:I

.field private qR:Ljava/lang/String;

.field private qS:Ljava/lang/String;

.field private qT:Ljava/lang/String;

.field private qU:I

.field private qV:Z

.field private qW:Ljava/lang/String;

.field private qX:I

.field private qY:Ljava/lang/String;

.field private qZ:Lcom/kingroot/kinguser/hh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static M(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/hh;)Lcom/kingroot/kinguser/hw$a;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/hw$a;->qZ:Lcom/kingroot/kinguser/hh;

    .line 111
    return-object p0
.end method

.method public an(Ljava/lang/String;)Lcom/kingroot/kinguser/hw$a;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/kingroot/kinguser/hw$a;->qR:Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public ao(Ljava/lang/String;)Lcom/kingroot/kinguser/hw$a;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/hw$a;->mClassName:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public ap(Ljava/lang/String;)Lcom/kingroot/kinguser/hw$a;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/hw$a;->qW:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public aq(Ljava/lang/String;)Lcom/kingroot/kinguser/hw$a;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/hw$a;->qX:I

    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/hw$a;->qY:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public b(Ljava/lang/String;I)Lcom/kingroot/kinguser/hw$a;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/kingroot/kinguser/hw$a;->qU:I

    .line 42
    return-object p0
.end method

.method public bg()Lcom/kingroot/kinguser/hi;
    .locals 11

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->qR:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/hw$a;->qU:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->qW:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->qZ:Lcom/kingroot/kinguser/hh;

    if-nez v0, :cond_4

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/hw$a;->qU:I

    invoke-static {v0}, Lcom/kingroot/kinguser/hw$a;->M(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/hw$a;->mClassName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_5
    new-instance v0, Lcom/kingroot/kinguser/lj;

    iget-object v1, p0, Lcom/kingroot/kinguser/hw$a;->qR:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/hw$a;->mVersion:I

    iget v3, p0, Lcom/kingroot/kinguser/hw$a;->qU:I

    iget-object v4, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/hw$a;->mClassName:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingroot/kinguser/hw$a;->qW:Ljava/lang/String;

    iget v7, p0, Lcom/kingroot/kinguser/hw$a;->qX:I

    iget-object v8, p0, Lcom/kingroot/kinguser/hw$a;->qY:Ljava/lang/String;

    iget-object v9, p0, Lcom/kingroot/kinguser/hw$a;->qZ:Lcom/kingroot/kinguser/hh;

    iget-boolean v10, p0, Lcom/kingroot/kinguser/hw$a;->qV:Z

    invoke-direct/range {v0 .. v10}, Lcom/kingroot/kinguser/lj;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/kingroot/kinguser/hh;Z)V

    .line 141
    :goto_0
    return-object v0

    :cond_6
    new-instance v0, Lcom/kingroot/kinguser/lx;

    iget-object v1, p0, Lcom/kingroot/kinguser/hw$a;->qR:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/hw$a;->mVersion:I

    iget-object v3, p0, Lcom/kingroot/kinguser/hw$a;->qS:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/hw$a;->qT:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/hw$a;->qW:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingroot/kinguser/hw$a;->qY:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/hw$a;->qZ:Lcom/kingroot/kinguser/hh;

    iget-boolean v8, p0, Lcom/kingroot/kinguser/hw$a;->qV:Z

    invoke-direct/range {v0 .. v8}, Lcom/kingroot/kinguser/lx;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/hh;Z)V

    goto :goto_0
.end method

.method public f(Z)Lcom/kingroot/kinguser/hw$a;
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/kingroot/kinguser/hw$a;->qV:Z

    .line 106
    return-object p0
.end method
