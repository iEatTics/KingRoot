.class public Lcom/kingroot/kinguser/bqp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bqp;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;


# instance fields
.field private bIK:Lorg/json/JSONObject;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bqp;->a:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bqp;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/kingroot/kinguser/bqp;->c:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/kingroot/kinguser/bqp;->bIK:Lorg/json/JSONObject;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bqp;->f:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bqp;->g:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bqp;->h:Z

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bqp;->c:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/kingroot/kinguser/bqp;->a()V

    .line 83
    invoke-direct {p0}, Lcom/kingroot/kinguser/bqp;->b()V

    .line 85
    return-void
.end method

.method public static L(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/bqp;
    .locals 4

    .prologue
    .line 57
    sget-object v1, Lcom/kingroot/kinguser/bqp;->a:Ljava/util/Map;

    monitor-enter v1

    .line 58
    :try_start_0
    const-string v0, "openSDK_LOG.OpenConfig"

    const-string v2, "getInstance begin"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bpy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    sput-object p1, Lcom/kingroot/kinguser/bqp;->b:Ljava/lang/String;

    .line 62
    :cond_0
    if-nez p1, :cond_1

    .line 63
    sget-object v0, Lcom/kingroot/kinguser/bqp;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 64
    sget-object p1, Lcom/kingroot/kinguser/bqp;->b:Ljava/lang/String;

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/bqp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bqp;

    .line 70
    if-nez v0, :cond_2

    .line 71
    new-instance v0, Lcom/kingroot/kinguser/bqp;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bqp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/kingroot/kinguser/bqp;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_2
    const-string v2, "openSDK_LOG.OpenConfig"

    const-string v3, "getInstance end"

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bpy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    monitor-exit v1

    return-object v0

    .line 66
    :cond_3
    const-string p1, "0"

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bqp;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/kingroot/kinguser/bqp;->g:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bqp;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "com.tencent.open.config.json"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bqp;->mO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bqp;->bIK:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bqp;->bIK:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bqp;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bqp;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 166
    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 168
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 178
    iget v0, p0, Lcom/kingroot/kinguser/bqp;->g:I

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "update thread is running, return"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bqp;->d(Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bqp;->g:I

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    const-string v1, "appid"

    iget-object v2, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "appid_for_getting_config"

    iget-object v2, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "status_version"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "sdkv"

    const-string v2, "3.2.1.lite"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/kingroot/kinguser/bqp$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bqp$1;-><init>(Lcom/kingroot/kinguser/bqp;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bqp$1;->start()V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp;->bIK:Lorg/json/JSONObject;

    const-string v1, "Common_frequency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 234
    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 237
    :cond_0
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 240
    iget-wide v4, p0, Lcom/kingroot/kinguser/bqp;->f:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/kingroot/kinguser/bqp;->b()V

    .line 244
    :cond_1
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 223
    const-string v0, "cgi back, do update"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bqp;->d(Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lcom/kingroot/kinguser/bqp;->bIK:Lorg/json/JSONObject;

    .line 225
    const-string v0, "com.tencent.open.config.json"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bqp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bqp;->f:J

    .line 227
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bqp;->h:Z

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "openSDK_LOG.OpenConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; appid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method private mO(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    .line 109
    const-string v1, ""

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bqp;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bqp;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 127
    :goto_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 135
    :catch_0
    move-exception v2

    .line 136
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v0, v1

    .line 145
    :goto_3
    return-object v0

    :cond_0
    move-object v0, p1

    .line 115
    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 121
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto :goto_1

    .line 122
    :catch_2
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 124
    goto :goto_3

    .line 134
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 139
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v1

    .line 143
    goto :goto_3

    .line 141
    :catch_3
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 144
    goto :goto_3

    .line 141
    :catch_4
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 144
    goto :goto_3

    .line 138
    :catchall_0
    move-exception v1

    .line 139
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 143
    :goto_4
    throw v1

    .line 141
    :catch_5
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bqp;->d(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/kingroot/kinguser/bqp;->c()V

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp;->bIK:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bqp;->d(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/kingroot/kinguser/bqp;->c()V

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp;->bIK:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    if-nez v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 285
    :cond_3
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 286
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method
