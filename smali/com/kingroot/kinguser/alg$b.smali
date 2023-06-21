.class public Lcom/kingroot/kinguser/alg$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/alg$a;",
            ">;"
        }
    .end annotation
.end field

.field public awK:Landroid/widget/TextView;

.field final synthetic awL:Lcom/kingroot/kinguser/alg;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alg;Landroid/view/View;Lcom/kingroot/kinguser/alg$a;)V
    .locals 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/alg$b;->awL:Lcom/kingroot/kinguser/alg;

    .line 72
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/alg$b;->alK:Ljava/lang/ref/WeakReference;

    .line 73
    if-eqz p3, :cond_0

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alg$b;->alK:Ljava/lang/ref/WeakReference;

    .line 76
    :cond_0
    const v0, 0x7f0f0245

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alg$b;->awK:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/alg$b;->awK:Landroid/widget/TextView;

    new-instance v1, Lcom/kingroot/kinguser/alg$b$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/alg$b$1;-><init>(Lcom/kingroot/kinguser/alg$b;Lcom/kingroot/kinguser/alg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alg$b;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/alg$b;->alK:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aml;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/alg$b;->awK:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/aml;->azM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method
