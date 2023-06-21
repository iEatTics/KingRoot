.class Lcom/kingroot/common/app/KApplication$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/app/KApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private FR:I

.field private FS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/app/KApplication$c;->FR:I

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$c;->FS:Ljava/lang/String;

    .line 583
    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/app/KApplication$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$c;->FS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/common/app/KApplication$c;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0, p1, p2}, Lcom/kingroot/common/app/KApplication$c;->l(ILjava/lang/String;)V

    return-void
.end method

.method private l(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 594
    iput p1, p0, Lcom/kingroot/common/app/KApplication$c;->FR:I

    .line 595
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iput-object p2, p0, Lcom/kingroot/common/app/KApplication$c;->FS:Ljava/lang/String;

    .line 598
    :cond_0
    return-void
.end method
