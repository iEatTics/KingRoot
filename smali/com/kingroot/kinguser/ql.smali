.class public Lcom/kingroot/kinguser/ql;
.super Lcom/kingroot/kinguser/qj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ql$a;,
        Lcom/kingroot/kinguser/ql$b;
    }
.end annotation


# static fields
.field public static TRANSLATION_Y:Lcom/android/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/kingroot/kinguser/ql$1;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ql$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kingroot/kinguser/ql;->TRANSLATION_Y:Lcom/android/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/qm;)V
    .locals 3

    .prologue
    .line 66
    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kingroot/kinguser/ql;-><init>(Lcom/kingroot/kinguser/qm;FFF)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/qm;FFF)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/kingroot/kinguser/qj;-><init>(Lcom/kingroot/kinguser/qm;FFF)V

    .line 82
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 96
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 97
    return-void
.end method

.method protected a(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float v0, p2, v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 103
    return-void
.end method

.method protected hn()Lcom/kingroot/kinguser/qj$e;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/kingroot/kinguser/ql$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ql$b;-><init>()V

    return-object v0
.end method

.method protected ho()Lcom/kingroot/kinguser/qj$a;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/kingroot/kinguser/ql$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ql$a;-><init>()V

    return-object v0
.end method
