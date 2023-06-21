.class public abstract Lcom/kingroot/kinguser/add;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/add$a;
    }
.end annotation


# instance fields
.field protected Vx:Landroid/support/v4/view/ViewPager;

.field protected acc:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected acd:Lcom/kingroot/kinguser/add$a;

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/add;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/add;->acc:Ljava/util/Vector;

    .line 44
    invoke-virtual {p0}, Lcom/kingroot/kinguser/add;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/add;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    new-instance v0, Lcom/kingroot/kinguser/add$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/add;->acc:Ljava/util/Vector;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/add$a;-><init>(Lcom/kingroot/kinguser/add;Ljava/util/Vector;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/add;->acd:Lcom/kingroot/kinguser/add$a;

    .line 46
    return-void
.end method


# virtual methods
.method protected abstract co(I)Ljava/lang/CharSequence;
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 51
    return-void
.end method
