.class public Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private aUI:I

.field private aUJ:Ljava/lang/String;

.field private aUK:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->aUI:I

    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->mPackageName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->aUJ:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->aUJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->aUK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->aUI:I

    return v0
.end method


# virtual methods
.method public SA()Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;-><init>(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$1;)V

    return-object v0
.end method

.method public hm(I)Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->aUI:I

    .line 80
    return-object p0
.end method

.method public jF(Ljava/lang/String;)Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->aUK:Ljava/lang/String;

    .line 75
    return-object p0
.end method
