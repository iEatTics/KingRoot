.class public Lcom/kingroot/kinguser/auc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/auc$a;
    }
.end annotation


# instance fields
.field public CJ:Ljava/lang/String;

.field public aQX:I

.field public aQY:Ljava/lang/String;

.field public aQZ:Ljava/lang/String;

.field public aRa:Ljava/lang/String;

.field public aRb:Ljava/lang/String;

.field public aRc:Ljava/lang/String;

.field public aRd:Landroid/graphics/drawable/Drawable;

.field public aRe:[Ljava/lang/String;

.field public aRf:I

.field public aRg:Lcom/kingroot/kinguser/bhu$a;

.field public aRh:Z

.field public aRi:Z

.field public aRj:Lcom/kingroot/kinguser/agg$a;

.field public aRk:Lcom/kingroot/kinguser/auc$a;

.field public aRl:Landroid/view/View$OnClickListener;

.field public mIconResId:I

.field public mPos:I

.field public mProgress:I

.field public mSelected:Z

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v1, p0, Lcom/kingroot/kinguser/auc;->aQX:I

    .line 101
    iput v1, p0, Lcom/kingroot/kinguser/auc;->aRf:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/auc;->aRi:Z

    .line 110
    iput-boolean v1, p0, Lcom/kingroot/kinguser/auc;->mSelected:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/auc;->aRl:Landroid/view/View$OnClickListener;

    .line 118
    const v0, -0xf423f

    iput v0, p0, Lcom/kingroot/kinguser/auc;->mIconResId:I

    return-void
.end method
