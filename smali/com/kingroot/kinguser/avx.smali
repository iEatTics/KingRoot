.class public Lcom/kingroot/kinguser/avx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aUp:Ljava/lang/String;

.field public final aUq:[I

.field public final aUr:I

.field public final aUs:Ljava/lang/String;

.field public final aUt:I

.field private final aUu:Ljava/lang/Object;

.field private volatile aUv:Ljava/lang/String;

.field public final pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avx;->aUu:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/avx;->aUv:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/kingroot/kinguser/avx;->aUp:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/kingroot/kinguser/avx;->pkgName:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p3}, Lcom/kingroot/kinguser/avx;->jC(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avx;->aUq:[I

    .line 59
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/avx;->aUr:I

    .line 60
    iput-object p5, p0, Lcom/kingroot/kinguser/avx;->aUs:Ljava/lang/String;

    .line 61
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    :goto_1
    iput v0, p0, Lcom/kingroot/kinguser/avx;->aUt:I

    .line 62
    return-void

    .line 59
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private jC(Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [I

    .line 49
    :cond_0
    return-object v0

    .line 40
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 41
    array-length v0, v3

    new-array v0, v0, [I

    .line 43
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 45
    aput v5, v0, v2

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Sq()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/avx;->aUv:Ljava/lang/String;

    .line 66
    if-nez v0, :cond_1

    .line 67
    iget-object v1, p0, Lcom/kingroot/kinguser/avx;->aUu:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avx;->aUv:Ljava/lang/String;

    .line 69
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/avx;->aUp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/avx;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/avx;->aUq:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/avx;->aUr:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/avx;->aUs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/avx;->aUt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/kingroot/kinguser/aah;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/kingroot/kinguser/avx;->aUv:Ljava/lang/String;

    .line 74
    :cond_0
    monitor-exit v1

    .line 76
    :cond_1
    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
