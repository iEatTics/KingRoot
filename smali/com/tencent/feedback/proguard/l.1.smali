.class public final Lcom/tencent/feedback/proguard/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/proguard/l$a;
    }
.end annotation


# static fields
.field private static b:Lcom/tencent/feedback/proguard/l;


# instance fields
.field public a:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/tencent/feedback/proguard/l;

    invoke-direct {v0}, Lcom/tencent/feedback/proguard/l;-><init>()V

    sput-object v0, Lcom/tencent/feedback/proguard/l;->b:Lcom/tencent/feedback/proguard/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/feedback/proguard/l;->a:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/tencent/feedback/proguard/l;)J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/tencent/feedback/proguard/l;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/feedback/proguard/l;J)J
    .locals 1

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/tencent/feedback/proguard/l;->e:J

    return-wide p1
.end method

.method public static a()Lcom/tencent/feedback/proguard/l;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tencent/feedback/proguard/l;->b:Lcom/tencent/feedback/proguard/l;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    iget-boolean v0, p0, Lcom/tencent/feedback/proguard/l;->c:Z

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iput-boolean v4, p0, Lcom/tencent/feedback/proguard/l;->c:Z

    .line 37
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    iput-boolean v3, p0, Lcom/tencent/feedback/proguard/l;->d:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-boolean v4, p0, Lcom/tencent/feedback/proguard/l;->d:Z

    :cond_3
    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/tencent/feedback/proguard/l$a;

    invoke-direct {v1, p0}, Lcom/tencent/feedback/proguard/l$a;-><init>(Lcom/tencent/feedback/proguard/l;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/tencent/feedback/proguard/l;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "[session] registed by api"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/tencent/feedback/proguard/l;->d:Z

    goto :goto_1
.end method
