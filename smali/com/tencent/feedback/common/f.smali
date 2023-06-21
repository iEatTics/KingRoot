.class public final Lcom/tencent/feedback/common/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/common/f$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:I

.field private static d:Ljava/lang/StringBuffer;

.field private static e:Ljava/lang/StringBuffer;

.field private static f:Lcom/tencent/feedback/common/f$a;

.field private static g:Ljava/lang/String;

.field private static h:Landroid/content/Context;

.field private static i:Ljava/lang/String;

.field private static j:Z

.field private static k:I

.field private static l:Ljava/lang/Object;

.field private static m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static n:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/feedback/common/f;->b:Ljava/text/SimpleDateFormat;

    .line 26
    const/16 v0, 0x1400

    sput v0, Lcom/tencent/feedback/common/f;->c:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/feedback/common/f;->l:Ljava/lang/Object;

    .line 39
    sput-object v2, Lcom/tencent/feedback/common/f;->m:Ljava/lang/Class;

    .line 40
    sput-object v2, Lcom/tencent/feedback/common/f;->n:Ljava/lang/reflect/Method;

    .line 44
    :try_start_0
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/tencent/feedback/common/f;->m:Ljava/lang/Class;

    const-string v1, "appendLogToNative"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/feedback/common/f;->n:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "eup"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/feedback/common/f$a;)Lcom/tencent/feedback/common/f$a;
    .locals 0

    .prologue
    .line 15
    sput-object p0, Lcom/tencent/feedback/common/f;->f:Lcom/tencent/feedback/common/f$a;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tencent/feedback/common/f;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    const/16 v0, 0x2800

    .line 91
    sget-object v1, Lcom/tencent/feedback/common/f;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    sput p0, Lcom/tencent/feedback/common/f;->c:I

    .line 93
    if-gez p0, :cond_2

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/tencent/feedback/common/f;->c:I

    .line 98
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-boolean v0, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "eup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[log] cache is set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/feedback/common/f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    return-void

    .line 95
    :cond_2
    if-le p0, v0, :cond_0

    .line 96
    const/16 v0, 0x2800

    :try_start_1
    sput v0, Lcom/tencent/feedback/common/f;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    const-class v2, Lcom/tencent/feedback/common/f;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/tencent/feedback/common/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 71
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/feedback/common/e;->a()Lcom/tencent/feedback/common/e$a;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_1
    sput-boolean v0, Lcom/tencent/feedback/common/f;->a:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/tencent/feedback/common/f;->e:Ljava/lang/StringBuffer;

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/tencent/feedback/common/f;->d:Ljava/lang/StringBuffer;

    .line 74
    sput-object p0, Lcom/tencent/feedback/common/f;->h:Landroid/content/Context;

    .line 75
    invoke-static {p0}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/tencent/feedback/common/c;->H()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/feedback/common/f;->g:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/feedback/common/f;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/buglylog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/feedback/common/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/feedback/common/f;->i:Ljava/lang/String;

    .line 81
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/tencent/feedback/common/f;->k:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_2
    :goto_2
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/tencent/feedback/common/f;->j:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :try_start_3
    sget-boolean v1, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0, p1, p2}, Lcom/tencent/feedback/common/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_1

    const-string v0, ""

    .line 116
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/feedback/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {p0, p1, v0}, Lcom/tencent/feedback/common/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Z)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    sget-object v2, Lcom/tencent/feedback/common/f;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    :try_start_0
    sget-object v1, Lcom/tencent/feedback/common/f;->f:Lcom/tencent/feedback/common/f$a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/feedback/common/f;->f:Lcom/tencent/feedback/common/f$a;

    invoke-static {v1}, Lcom/tencent/feedback/common/f$a;->d(Lcom/tencent/feedback/common/f$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/tencent/feedback/common/f;->f:Lcom/tencent/feedback/common/f$a;

    invoke-static {v1}, Lcom/tencent/feedback/common/f$a;->a(Lcom/tencent/feedback/common/f$a;)Ljava/io/File;

    move-result-object v1

    .line 202
    :goto_0
    sget-object v3, Lcom/tencent/feedback/common/f;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 203
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    .line 200
    goto :goto_0

    .line 205
    :cond_1
    :try_start_2
    sget-object v3, Lcom/tencent/feedback/common/f;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/feedback/proguard/a;->a(Ljava/io/File;Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 206
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    :try_start_4
    sget-boolean v3, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    :cond_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static synthetic b()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tencent/feedback/common/f;->e:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 122
    const-class v1, Lcom/tencent/feedback/common/f;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/feedback/common/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 127
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/tencent/feedback/common/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 130
    sget-object v2, Lcom/tencent/feedback/common/f;->d:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7800

    if-le v2, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0x7800

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    sget-boolean v2, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "eup"

    const-string v3, "[log] your log is too long, will be substring"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v3, Lcom/tencent/feedback/common/f;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/feedback/common/f;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget v3, Lcom/tencent/feedback/common/f;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\u0001\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/tencent/feedback/common/f;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    sget-object v2, Lcom/tencent/feedback/common/f;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    sget-object v2, Lcom/tencent/feedback/common/f;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sget v3, Lcom/tencent/feedback/common/f;->c:I

    if-le v2, v3, :cond_0

    .line 138
    invoke-static {}, Lcom/tencent/feedback/common/b;->b()Lcom/tencent/feedback/common/b;

    move-result-object v2

    new-instance v3, Lcom/tencent/feedback/common/f$1;

    invoke-direct {v3, v0}, Lcom/tencent/feedback/common/f$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/b;->a(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/tencent/feedback/common/f;->c:I

    return v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-object v0, Lcom/tencent/feedback/common/f;->m:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/feedback/common/f;->n:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 58
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/f;->n:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/tencent/feedback/common/f;->m:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v2, "eup"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 61
    goto :goto_0
.end method

.method static synthetic d()Lcom/tencent/feedback/common/f$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tencent/feedback/common/f;->f:Lcom/tencent/feedback/common/f$a;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tencent/feedback/common/f;->i:Ljava/lang/String;

    return-object v0
.end method
