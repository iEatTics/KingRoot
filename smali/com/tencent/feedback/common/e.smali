.class public final Lcom/tencent/feedback/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/common/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/feedback/common/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/common/e;->a:Lcom/tencent/feedback/common/e$a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/feedback/common/e$a;
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/tencent/feedback/common/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/common/e;->a:Lcom/tencent/feedback/common/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/tencent/feedback/common/e$a;)V
    .locals 2

    .prologue
    .line 46
    const-class v0, Lcom/tencent/feedback/common/e;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/common/e;->a:Lcom/tencent/feedback/common/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static varargs a(ILjava/lang/String;[Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 61
    invoke-static {}, Lcom/tencent/feedback/common/e;->a()Lcom/tencent/feedback/common/e$a;

    move-result-object v2

    .line 62
    if-nez v2, :cond_0

    .line 83
    :goto_0
    return v0

    .line 65
    :cond_0
    if-nez p1, :cond_2

    const-string p1, "null"

    .line 67
    :cond_1
    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    invoke-virtual {v2, p1}, Lcom/tencent/feedback/common/e$a;->a(Ljava/lang/String;)V

    move v0, v1

    .line 70
    goto :goto_0

    .line 65
    :cond_2
    if-eqz p2, :cond_1

    array-length v3, p2

    if-eqz v3, :cond_1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 72
    :pswitch_1
    invoke-virtual {v2, p1}, Lcom/tencent/feedback/common/e$a;->b(Ljava/lang/String;)V

    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :pswitch_2
    invoke-virtual {v2, p1}, Lcom/tencent/feedback/common/e$a;->c(Ljava/lang/String;)V

    .line 76
    const-string v0, "W"

    const-string v2, "eup"

    invoke-static {v0, v2, p1}, Lcom/tencent/feedback/common/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    invoke-virtual {v2, p1}, Lcom/tencent/feedback/common/e$a;->d(Ljava/lang/String;)V

    .line 80
    const-string v0, "E"

    const-string v2, "eup"

    invoke-static {v0, v2, p1}, Lcom/tencent/feedback/common/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 81
    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(ILjava/lang/Throwable;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-static {}, Lcom/tencent/feedback/common/e;->a()Lcom/tencent/feedback/common/e$a;

    move-result-object v2

    .line 88
    if-nez v2, :cond_0

    .line 109
    :goto_0
    return v0

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/tencent/feedback/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 93
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/e$a;->a(Ljava/lang/String;)V

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/e$a;->b(Ljava/lang/String;)V

    move v0, v1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/e$a;->c(Ljava/lang/String;)V

    .line 102
    const-string v0, "W"

    const-string v2, "eup"

    invoke-static {v0, v2, v3}, Lcom/tencent/feedback/common/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :pswitch_3
    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/e$a;->d(Ljava/lang/String;)V

    .line 106
    const-string v0, "E"

    const-string v2, "eup"

    invoke-static {v0, v2, v3}, Lcom/tencent/feedback/common/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 107
    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/tencent/feedback/common/e;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/tencent/feedback/common/e;->a(ILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/tencent/feedback/common/e;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/tencent/feedback/common/e;->a(ILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tencent/feedback/common/e;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tencent/feedback/common/e;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
