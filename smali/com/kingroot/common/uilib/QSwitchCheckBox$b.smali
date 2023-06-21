.class public Lcom/kingroot/common/uilib/QSwitchCheckBox$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/QSwitchCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public Ra:Ljava/lang/String;

.field public Rb:Ljava/lang/String;

.field public Rc:I

.field public Rd:I

.field public Re:I

.field public Rf:I

.field public Rg:I

.field public Rh:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Ra:Ljava/lang/String;

    .line 717
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rb:Ljava/lang/String;

    .line 718
    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rc:I

    .line 719
    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rd:I

    .line 721
    const/high16 v0, -0x60000000

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rf:I

    .line 722
    const v0, 0x662089fc    # 1.89531E23f

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rg:I

    .line 723
    const v0, 0x66959ead

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rh:I

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/kingroot/common/uilib/QSwitchCheckBox$b;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 741
    new-instance v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    invoke-direct {v0}, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;-><init>()V

    .line 743
    sget-object v1, Lcom/kingroot/kinguser/afs$a;->switcher:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 745
    const/4 v2, 0x2

    const v3, 0x7f02024f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Re:I

    .line 747
    iget v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Re:I

    if-gez v2, :cond_0

    .line 748
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must set the thumb drawable for the switch button"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 754
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 756
    if-lez v2, :cond_1

    .line 757
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Ra:Ljava/lang/String;

    .line 761
    :cond_1
    if-lez v3, :cond_2

    .line 762
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rb:Ljava/lang/String;

    .line 766
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rc:I

    .line 768
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rd:I

    .line 770
    const/4 v2, 0x7

    const/high16 v3, -0x60000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rf:I

    .line 772
    const/4 v2, 0x0

    const v3, 0x662089fc    # 1.89531E23f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rg:I

    .line 774
    const/4 v2, 0x1

    const v3, 0x66959ead

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rh:I

    .line 776
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 778
    return-object v0
.end method
