.class Lcom/kingroot/kinguser/aoo;
.super Lcom/kingroot/kinguser/aol;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aGq:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aoo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ExaminationAppDistEngine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aoo;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/aoo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aoo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aoo;->aGq:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/kinguser/aol;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aoo;->b(Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aoo$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoo;-><init>()V

    return-void
.end method

.method public static Ko()Lcom/kingroot/kinguser/aoo;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kingroot/kinguser/aoo;->aGq:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aoo;

    return-object v0
.end method


# virtual methods
.method public JX()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0}, Lcom/kingroot/kinguser/aol;->JX()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected Ke()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "5010011"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "5010012"

    goto :goto_0
.end method

.method protected Kf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "examination_app_dist"

    return-object v0
.end method

.method protected getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "examination_app_dist_info"

    return-object v0
.end method
