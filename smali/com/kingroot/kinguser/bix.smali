.class public Lcom/kingroot/kinguser/bix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bix$a;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bvd:Lcom/kingroot/kinguser/bix$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/kingroot/kinguser/bix$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bix$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bix;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bix$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/kinguser/bix;-><init>()V

    return-void
.end method

.method public static ado()Lcom/kingroot/kinguser/bix;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kingroot/kinguser/bix;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bix;

    return-object v0
.end method

.method private lS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 98
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 98
    return-object v1

    .line 100
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method


# virtual methods
.method public declared-synchronized adp()Lcom/kingroot/kinguser/bix$a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bix;->bvd:Lcom/kingroot/kinguser/bix$a;

    if-eqz v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bix;->bvd:Lcom/kingroot/kinguser/bix$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 56
    :cond_1
    :try_start_1
    const-string v1, "/proc/version"

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bix;->lS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 65
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 76
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 79
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 81
    new-instance v2, Lcom/kingroot/kinguser/bix$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bix$a;-><init>()V

    iput-object v2, p0, Lcom/kingroot/kinguser/bix;->bvd:Lcom/kingroot/kinguser/bix$a;

    .line 82
    iget-object v2, p0, Lcom/kingroot/kinguser/bix;->bvd:Lcom/kingroot/kinguser/bix$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bix$a;->version:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/kingroot/kinguser/bix;->bvd:Lcom/kingroot/kinguser/bix$a;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/bix$a;->bve:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/kingroot/kinguser/bix;->bvd:Lcom/kingroot/kinguser/bix$a;

    iput-object v0, v1, Lcom/kingroot/kinguser/bix$a;->bvf:Ljava/util/Date;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bix;->bvd:Lcom/kingroot/kinguser/bix$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :catch_0
    move-exception v0

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    goto :goto_1
.end method
