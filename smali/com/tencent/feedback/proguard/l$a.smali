.class final Lcom/tencent/feedback/proguard/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/proguard/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/feedback/proguard/l;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/proguard/l;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/feedback/proguard/l;->a(Lcom/tencent/feedback/proguard/l;J)J

    .line 121
    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    const-string v1, "background"

    iput-object v1, v0, Lcom/tencent/feedback/proguard/l;->a:Ljava/lang/String;

    .line 126
    :goto_0
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->b(Z)V

    .line 129
    iget-object v1, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    iget-object v1, v1, Lcom/tencent/feedback/proguard/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->i(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    const-string v1, "unknown"

    iput-object v1, v0, Lcom/tencent/feedback/proguard/l;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 91
    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/feedback/proguard/l;->a:Ljava/lang/String;

    .line 96
    :goto_0
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->b(Z)V

    .line 99
    iget-object v1, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    iget-object v1, v1, Lcom/tencent/feedback/proguard/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->i(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    invoke-static {v0}, Lcom/tencent/feedback/proguard/l;->a(Lcom/tencent/feedback/proguard/l;)J

    .line 103
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/proguard/l$a;->a:Lcom/tencent/feedback/proguard/l;

    const-string v1, "unknown"

    iput-object v1, v0, Lcom/tencent/feedback/proguard/l;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
