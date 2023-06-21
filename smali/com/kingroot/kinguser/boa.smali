.class public abstract Lcom/kingroot/kinguser/boa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingroot/kinguser/boc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/boa$b;,
        Lcom/kingroot/kinguser/boa$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/Map;

.field private bFe:Lcom/kingroot/kinguser/boa$b;

.field private bFf:Ljava/net/URL;

.field private bFg:Ljava/net/HttpURLConnection;

.field private bFh:Ljava/io/InputStream;

.field private bFi:Ljava/util/List;

.field public bFj:Lcom/kingroot/kinguser/bog;

.field private volatile bFk:Z

.field public c:Z

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:J

.field private x:J

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/boa$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/boa$b;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->bFe:Lcom/kingroot/kinguser/boa$b;

    iput-object v1, p0, Lcom/kingroot/kinguser/boa;->b:Ljava/util/Map;

    iput v2, p0, Lcom/kingroot/kinguser/boa;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/kingroot/kinguser/boa;->j:I

    iput-boolean v2, p0, Lcom/kingroot/kinguser/boa;->c:Z

    const/16 v0, 0x8

    iput v0, p0, Lcom/kingroot/kinguser/boa;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingroot/kinguser/boa;->bFf:Ljava/net/URL;

    iput-object v1, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/kingroot/kinguser/boa;->bFh:Ljava/io/InputStream;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->u:Ljava/lang/String;

    iput-wide v4, p0, Lcom/kingroot/kinguser/boa;->v:J

    iput-object v1, p0, Lcom/kingroot/kinguser/boa;->bFi:Ljava/util/List;

    iput-wide v4, p0, Lcom/kingroot/kinguser/boa;->x:J

    iput-boolean v2, p0, Lcom/kingroot/kinguser/boa;->bFk:Z

    iput-boolean v2, p0, Lcom/kingroot/kinguser/boa;->z:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    iget-object v1, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v1, "X-Extra-Servers"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v0, v3

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->bFi:Ljava/util/List;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/kingroot/kinguser/boa;->bFi:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private as()V
    .locals 5

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFe:Lcom/kingroot/kinguser/boa$b;

    invoke-static {v0}, Lcom/kingroot/kinguser/boa$b;->a(Lcom/kingroot/kinguser/boa$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v1, "Range"

    iget-object v2, p0, Lcom/kingroot/kinguser/boa;->bFe:Lcom/kingroot/kinguser/boa$b;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/boa$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/boa;->b:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/boa;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/boa;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v0

    :cond_2
    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "HalleyService/2.0"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)J
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :try_start_0
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private i(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/kingroot/kinguser/boa;->bFk:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x42

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/boe;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, -0xf

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    goto :goto_0

    :cond_1
    const-string v0, "info.3g.qq.com"

    const/16 v1, 0x50

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/boh;->h(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x10

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/kingroot/kinguser/boa;->j(Ljava/lang/Throwable;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    goto :goto_0
.end method

.method private static j(Ljava/lang/Throwable;)I
    .locals 3

    const/16 v0, -0x30

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Permission"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, -0x47

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :cond_1
    instance-of v1, p0, Ljava/lang/Exception;

    if-nez v1, :cond_2

    const/16 v0, -0x46

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_0

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_3

    const/16 v0, -0x19

    goto :goto_0

    :cond_3
    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_4

    const/16 v0, -0x1d

    goto :goto_0

    :cond_4
    instance-of v1, p0, Ljava/net/ConnectException;

    if-eqz v1, :cond_5

    const/16 v0, -0x18

    goto :goto_0

    :cond_5
    instance-of v1, p0, Ljava/net/SocketException;

    if-eqz v1, :cond_6

    const/16 v0, -0x1a

    goto :goto_0

    :cond_6
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    const/16 v0, -0x1b

    goto :goto_0
.end method

.method private static mM(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    return v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bok;->J(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/kingroot/kinguser/boa$a;)V
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFe:Lcom/kingroot/kinguser/boa$b;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/boa$b;->a(Lcom/kingroot/kinguser/boa$a;)V

    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bob;)V
    .locals 19

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/boa;->bFh:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/boa;->bFe:Lcom/kingroot/kinguser/boa$b;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/boa$b;->agy()Lcom/kingroot/kinguser/boa$a;

    move-result-object v8

    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/kingroot/kinguser/boa;->v:J

    move-wide v10, v2

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/boa;->j:I

    new-array v12, v2, [B

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    :goto_1
    cmp-long v13, v8, v10

    if-gez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingroot/kinguser/boa;->bFj:Lcom/kingroot/kinguser/bog;

    invoke-interface {v13}, Lcom/kingroot/kinguser/bog;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/boa;->cC()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    :goto_2
    return-void

    :cond_0
    :try_start_1
    iget-wide v2, v8, Lcom/kingroot/kinguser/boa$a;->b:J

    iget-wide v10, v8, Lcom/kingroot/kinguser/boa$a;->a:J

    sub-long/2addr v2, v10

    iget-wide v8, v8, Lcom/kingroot/kinguser/boa$a;->b:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/kingroot/kinguser/boa;->v:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v10, v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/boa;->cC()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    goto :goto_2

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/kingroot/kinguser/boa;->j:I

    int-to-long v14, v13

    sub-long v16, v10, v8

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v13, v14

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingroot/kinguser/boa;->bFh:Ljava/io/InputStream;

    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :cond_4
    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingroot/kinguser/boa;->bFj:Lcom/kingroot/kinguser/bog;

    invoke-interface {v14}, Lcom/kingroot/kinguser/bog;->a()Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v3}, Lcom/kingroot/kinguser/bob;->b([BIZ)Z

    move-result v2

    :cond_5
    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :cond_6
    int-to-long v14, v13

    add-long/2addr v8, v14

    goto/16 :goto_1

    :cond_7
    const/16 v2, -0x3e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kingroot/kinguser/boa;->h:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readLen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",dataLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/boa;->cC()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/boa;->cC()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    goto/16 :goto_2

    :catch_0
    move-exception v2

    move-object/from16 v18, v2

    move-wide v2, v4

    move-object/from16 v4, v18

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kingroot/kinguser/boa;->i(Ljava/lang/Throwable;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_9

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/boa;->cC()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingroot/kinguser/boa;->x:J

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kingroot/kinguser/boa;->x:J

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/boa;->cC()V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/kingroot/kinguser/boa;->x:J

    sub-long/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/kingroot/kinguser/boa;->x:J

    throw v2

    :catchall_1
    move-exception v4

    move-object/from16 v18, v4

    move-wide v4, v2

    move-object/from16 v2, v18

    goto :goto_3

    :cond_a
    move-wide v10, v2

    goto/16 :goto_0
.end method

.method public final agv()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFi:Ljava/util/List;

    return-object v0
.end method

.method public final agw()V
    .locals 10

    const-wide/16 v8, -0x1

    const/16 v6, -0x39

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->f:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/boa;->cC()V

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/boa;->k:I

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFj:Lcom/kingroot/kinguser/bog;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bog;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput v2, p0, Lcom/kingroot/kinguser/boa;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/kingroot/kinguser/boa;->f:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->bFf:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/kingroot/kinguser/boe;->agz()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v4, p0, Lcom/kingroot/kinguser/boa;->bFf:Ljava/net/URL;

    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-direct {p0}, Lcom/kingroot/kinguser/boa;->as()V

    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/boa;->z:Z

    sparse-switch v4, :sswitch_data_0

    iput v4, p0, Lcom/kingroot/kinguser/boa;->h:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    :goto_4
    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/kingroot/kinguser/boa;->z:Z

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFf:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->l:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_5
    iget v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    if-ne v0, v6, :cond_11

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v4, -0x33

    iput v4, p0, Lcom/kingroot/kinguser/boa;->h:I

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_4

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFf:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/boa;->i(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :sswitch_0
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Type"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "text/html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/vnd.wap.wml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/webviewhtml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v3

    :goto_6
    if-eqz v0, :cond_7

    const/16 v0, -0xb

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/boa;->i(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Range"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Length"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFe:Lcom/kingroot/kinguser/boa$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boa$b;->a()I

    move-result v0

    if-lez v0, :cond_8

    move v0, v3

    :goto_7
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/boa;->b(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/boa;->v:J

    iget-wide v4, p0, Lcom/kingroot/kinguser/boa;->v:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_c

    const/16 v0, -0x36

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "content-range header:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/boa;->q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    const/16 v0, -0x35

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/boa;->mM(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/boa;->v:J

    iget-wide v4, p0, Lcom/kingroot/kinguser/boa;->v:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_c

    const/16 v0, -0x38

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "content-range header:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/boa;->r:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    const/16 v0, -0x37

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v4, "etag"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v4, "Last-Modified"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Disposition"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->s:Ljava/lang/String;

    goto/16 :goto_3

    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    const-string v4, "location"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, -0x3a

    iput v4, p0, Lcom/kingroot/kinguser/boa;->h:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "location:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    :cond_e
    iget-object v4, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/kingroot/kinguser/boa;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/boa;->a(Ljava/lang/String;)V

    const/16 v0, -0x39

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    goto/16 :goto_3

    :sswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/boe;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/kingroot/kinguser/boa;->c:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFe:Lcom/kingroot/kinguser/boa$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boa$b;->a()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v3

    :goto_8
    if-eqz v0, :cond_10

    const/16 v0, -0x3b

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto :goto_8

    :cond_10
    iput v4, p0, Lcom/kingroot/kinguser/boa;->h:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_11
    iget v0, p0, Lcom/kingroot/kinguser/boa;->k:I

    if-lt v1, v0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    if-ne v0, v6, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/boa;->h:I

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x133 -> :sswitch_1
        0x19d -> :sswitch_2
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public final agx()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/boa;->bFk:Z

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/kingroot/kinguser/boa;->v:J

    return-wide v0
.end method

.method public final cC()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFh:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/kingroot/kinguser/boa;->bFg:Ljava/net/HttpURLConnection;

    :cond_0
    iput-object v1, p0, Lcom/kingroot/kinguser/boa;->bFh:Ljava/io/InputStream;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bok;->J(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/boa;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bok;->J(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boa;->bFe:Lcom/kingroot/kinguser/boa$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boa$b;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
