.class final Lcom/android/animation/ViewPropertyCompat$13;
.super Lcom/android/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/animation/ViewPropertyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/util/FloatProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 165
    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhi;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/animation/ViewPropertyCompat$13;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 160
    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bhi;->setX(F)V

    .line 161
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/animation/ViewPropertyCompat$13;->setValue(Landroid/view/View;F)V

    return-void
.end method
