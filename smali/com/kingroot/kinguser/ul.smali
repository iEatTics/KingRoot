.class public Lcom/kingroot/kinguser/ul;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final IE:I

.field private static IF:J

.field private static Iy:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7530

    :goto_0
    sput v0, Lcom/kingroot/kinguser/ul;->IE:I

    .line 32
    sget v0, Lcom/kingroot/kinguser/ul;->IE:I

    int-to-long v0, v0

    sput-wide v0, Lcom/kingroot/kinguser/ul;->IF:J

    return-void

    .line 29
    :cond_0
    const v0, 0x927c0

    goto :goto_0
.end method

.method private static N(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 5

    .prologue
    .line 55
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x64

    new-instance v2, Landroid/content/ComponentName;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/kingroot/common/improve/protection/KCheckServiceJob;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 58
    sget-wide v2, Lcom/kingroot/kinguser/ul;->IF:J

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 60
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lcom/kingroot/kinguser/ul;->Iy:Ljava/lang/Runnable;

    .line 41
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 42
    invoke-static {p0}, Lcom/kingroot/kinguser/ul;->N(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static kB()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/kingroot/kinguser/ul;->Iy:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static y(J)V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sput-wide p0, Lcom/kingroot/kinguser/ul;->IF:J

    .line 80
    :cond_0
    return-void
.end method
