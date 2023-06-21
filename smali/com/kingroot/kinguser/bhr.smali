.class public final Lcom/kingroot/kinguser/bhr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aWA:Lcom/kingroot/kinguser/bia;

.field private aWB:Lcom/kingroot/kinguser/bhz;

.field private aWz:Lcom/kingroot/kinguser/bhy;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kingroot/kinguser/bhr;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public acH()Lcom/kingroot/kinguser/bhy;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWz:Lcom/kingroot/kinguser/bhy;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/kingroot/kinguser/bhy;

    iget-object v1, p0, Lcom/kingroot/kinguser/bhr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bhy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWz:Lcom/kingroot/kinguser/bhy;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWz:Lcom/kingroot/kinguser/bhy;

    return-object v0
.end method

.method public acI()Lcom/kingroot/kinguser/bia;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWA:Lcom/kingroot/kinguser/bia;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/bia;

    iget-object v1, p0, Lcom/kingroot/kinguser/bhr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bia;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWA:Lcom/kingroot/kinguser/bia;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWA:Lcom/kingroot/kinguser/bia;

    return-object v0
.end method

.method public acJ()Lcom/kingroot/kinguser/bhz;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWB:Lcom/kingroot/kinguser/bhz;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/bhz;

    iget-object v1, p0, Lcom/kingroot/kinguser/bhr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bhz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWB:Lcom/kingroot/kinguser/bhz;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bhr;->aWB:Lcom/kingroot/kinguser/bhz;

    return-object v0
.end method
