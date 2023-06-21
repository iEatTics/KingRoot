.class public Lcom/kingroot/kinguser/asr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/asr$d;,
        Lcom/kingroot/kinguser/asr$e;,
        Lcom/kingroot/kinguser/asr$c;,
        Lcom/kingroot/kinguser/asr$b;,
        Lcom/kingroot/kinguser/asr$a;
    }
.end annotation


# instance fields
.field public aNq:Ljava/lang/String;

.field public aNr:Landroid/content/pm/PackageInfo;

.field public aNs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field public aNt:Z

.field public aha:Z

.field public mName:Ljava/lang/String;

.field public mType:I

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/asr;->mType:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/asr;->mView:Landroid/view/View;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/asr;->aNt:Z

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/asr;->mType:I

    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/asr;->mView:Landroid/view/View;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/asr;->mType:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/asr;->mView:Landroid/view/View;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/asr;->aNt:Z

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingroot/kinguser/asr;->mType:I

    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/asr;->aNs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/asr;->mType:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/asr;->mView:Landroid/view/View;

    .line 54
    iput-boolean v1, p0, Lcom/kingroot/kinguser/asr;->aNt:Z

    .line 70
    iput v1, p0, Lcom/kingroot/kinguser/asr;->mType:I

    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/asr;->aNq:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingroot/kinguser/asr;->mType:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingroot/kinguser/asr;->mView:Landroid/view/View;

    .line 54
    iput-boolean v0, p0, Lcom/kingroot/kinguser/asr;->aNt:Z

    .line 57
    const/4 v1, 0x2

    iput v1, p0, Lcom/kingroot/kinguser/asr;->mType:I

    .line 58
    iput-object p2, p0, Lcom/kingroot/kinguser/asr;->aNr:Landroid/content/pm/PackageInfo;

    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/asr;->mName:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/kingroot/kinguser/asr;->aNr:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/asr;->aNr:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/asr;->aha:Z

    .line 62
    return-void
.end method
