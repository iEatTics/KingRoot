.class public Lcom/kingroot/kinguser/qe$a;
.super Lcom/kingroot/kinguser/qj$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/qe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/qj$a;-><init>()V

    .line 46
    sget-object v0, Lcom/android/animation/ViewPropertyCompat;->TRANSLATION_X:Lcom/android/util/Property;

    iput-object v0, p0, Lcom/kingroot/kinguser/qe$a;->mProperty:Lcom/android/util/Property;

    .line 47
    return-void
.end method


# virtual methods
.method protected c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhi;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/qe$a;->Eg:F

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/qe$a;->Eh:F

    .line 53
    return-void
.end method
