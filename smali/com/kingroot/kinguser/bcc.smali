.class public final Lcom/kingroot/kinguser/bcc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bfS:Lcom/kingroot/kinguser/bcm;

.field private bfT:Lcom/kingroot/kinguser/bch;

.field private bfU:Lcom/kingroot/kinguser/bcn;

.field private bfV:Lcom/kingroot/kinguser/bcl;

.field private bfW:Lcom/kingroot/kinguser/bci;

.field private bfX:Lcom/kingroot/kinguser/bck;

.field private bfY:Lcom/kingroot/kinguser/bcj;

.field private bfZ:Z

.field private bga:I

.field private bgb:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bcc;->bfZ:Z

    .line 33
    iput v0, p0, Lcom/kingroot/kinguser/bcc;->bga:I

    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/bcc;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/kingroot/kinguser/bcc;->bgb:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method


# virtual methods
.method public Xd()Lcom/kingroot/kinguser/bci;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfW:Lcom/kingroot/kinguser/bci;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/kingroot/kinguser/bci;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bci;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfW:Lcom/kingroot/kinguser/bci;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfW:Lcom/kingroot/kinguser/bci;

    return-object v0
.end method

.method public Xe()Lcom/kingroot/kinguser/bcl;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfV:Lcom/kingroot/kinguser/bcl;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/kingroot/kinguser/bcl;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bcl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfV:Lcom/kingroot/kinguser/bcl;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfV:Lcom/kingroot/kinguser/bcl;

    return-object v0
.end method

.method public Xf()Lcom/kingroot/kinguser/bcn;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfU:Lcom/kingroot/kinguser/bcn;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/kingroot/kinguser/bcn;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bcn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfU:Lcom/kingroot/kinguser/bcn;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfU:Lcom/kingroot/kinguser/bcn;

    return-object v0
.end method

.method public Xg()Lcom/kingroot/kinguser/bch;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfT:Lcom/kingroot/kinguser/bch;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/bch;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfT:Lcom/kingroot/kinguser/bch;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfT:Lcom/kingroot/kinguser/bch;

    return-object v0
.end method

.method public Xh()Lcom/kingroot/kinguser/bcm;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfS:Lcom/kingroot/kinguser/bcm;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/kingroot/kinguser/bcm;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bcm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfS:Lcom/kingroot/kinguser/bcm;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfS:Lcom/kingroot/kinguser/bcm;

    return-object v0
.end method

.method public Xi()Lcom/kingroot/kinguser/bck;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfX:Lcom/kingroot/kinguser/bck;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/kingroot/kinguser/bck;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfX:Lcom/kingroot/kinguser/bck;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfX:Lcom/kingroot/kinguser/bck;

    return-object v0
.end method

.method public Xj()Lcom/kingroot/kinguser/bcj;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfY:Lcom/kingroot/kinguser/bcj;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/kingroot/kinguser/bcj;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bcj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfY:Lcom/kingroot/kinguser/bcj;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcc;->bfY:Lcom/kingroot/kinguser/bcj;

    return-object v0
.end method

.method public a(Lcom/kingroot/kinguser/bcl;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/bcc;->bfV:Lcom/kingroot/kinguser/bcl;

    .line 72
    return-void
.end method
