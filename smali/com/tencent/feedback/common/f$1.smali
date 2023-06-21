.class final Lcom/tencent/feedback/common/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/feedback/common/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tencent/feedback/common/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/feedback/common/f;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-static {}, Lcom/tencent/feedback/common/f;->c()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gt v0, v2, :cond_0

    .line 145
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_0
    return-void

    .line 147
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/tencent/feedback/common/f;->d()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    if-nez v0, :cond_3

    .line 149
    new-instance v0, Lcom/tencent/feedback/common/f$a;

    invoke-static {}, Lcom/tencent/feedback/common/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/feedback/common/f$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/feedback/common/f;->a(Lcom/tencent/feedback/common/f$a;)Lcom/tencent/feedback/common/f$a;

    .line 154
    :cond_1
    :goto_1
    invoke-static {}, Lcom/tencent/feedback/common/f;->d()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/f$a;->d(Lcom/tencent/feedback/common/f$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-static {}, Lcom/tencent/feedback/common/f;->d()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/common/f$a;->a(Ljava/lang/String;)Z

    .line 157
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 150
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/tencent/feedback/common/f;->d()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/f$a;->a(Lcom/tencent/feedback/common/f$a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {}, Lcom/tencent/feedback/common/f;->d()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/f$a;->b(Lcom/tencent/feedback/common/f$a;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/tencent/feedback/common/f;->d()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/f$a;->c(Lcom/tencent/feedback/common/f$a;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_5
    sget-boolean v2, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 160
    :cond_4
    :try_start_6
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 161
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/feedback/common/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method
