.class final Lcom/tencent/feedback/proguard/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/feedback/proguard/z;->a(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/feedback/proguard/z;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/proguard/z;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/tencent/feedback/proguard/z$1;->a:Lcom/tencent/feedback/proguard/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 133
    iget-object v0, p0, Lcom/tencent/feedback/proguard/z$1;->a:Lcom/tencent/feedback/proguard/z;

    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/z;->f()J

    move-result-wide v0

    .line 134
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 135
    sub-long/2addr v0, v2

    .line 136
    iget-object v4, p0, Lcom/tencent/feedback/proguard/z$1;->a:Lcom/tencent/feedback/proguard/z;

    invoke-virtual {v4}, Lcom/tencent/feedback/proguard/z;->g()Lcom/tencent/feedback/common/b;

    move-result-object v4

    .line 137
    if-eqz v4, :cond_0

    .line 138
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .line 140
    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-virtual {v4, p0, v0, v1}, Lcom/tencent/feedback/common/b;->a(Ljava/lang/Runnable;J)Z

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v0, "rqdp{  next day to upload}"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/tencent/feedback/proguard/z$1;->a:Lcom/tencent/feedback/proguard/z;

    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/z;->d()Z

    .line 145
    iget-object v0, p0, Lcom/tencent/feedback/proguard/z$1;->a:Lcom/tencent/feedback/proguard/z;

    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/z;->e()J

    move-result-wide v0

    .line 146
    iget-object v5, p0, Lcom/tencent/feedback/proguard/z$1;->a:Lcom/tencent/feedback/proguard/z;

    invoke-virtual {v5, v0, v1}, Lcom/tencent/feedback/proguard/z;->b(J)V

    .line 147
    sub-long v6, v0, v2

    invoke-virtual {v4, p0, v6, v7}, Lcom/tencent/feedback/common/b;->a(Ljava/lang/Runnable;J)Z

    .line 149
    const-string v4, "rqdp{ next day %d}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
