.class public Lcom/kingroot/kinguser/qo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/qm;


# instance fields
.field protected final Ex:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/kingroot/kinguser/qo;->Ex:Landroid/widget/ScrollView;

    .line 24
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/qo;->Ex:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public hs()Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/qo;->Ex:Landroid/widget/ScrollView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ht()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    iget-object v1, p0, Lcom/kingroot/kinguser/qo;->Ex:Landroid/widget/ScrollView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
