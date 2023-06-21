.class public Lcom/kingroot/kinguser/ql$a;
.super Lcom/kingroot/kinguser/qj$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/qj$a;-><init>()V

    .line 47
    sget-object v0, Lcom/kingroot/kinguser/ql;->TRANSLATION_Y:Lcom/android/util/Property;

    iput-object v0, p0, Lcom/kingroot/kinguser/ql$a;->mProperty:Lcom/android/util/Property;

    .line 48
    return-void
.end method


# virtual methods
.method protected c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ql$a;->Eg:F

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/ql$a;->Eh:F

    .line 54
    return-void
.end method
