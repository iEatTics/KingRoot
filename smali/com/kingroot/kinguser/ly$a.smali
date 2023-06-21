.class final Lcom/kingroot/kinguser/ly$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final aZ:Ljava/lang/String;

.field final maxSdkVersion:I

.field final minSdkVersion:I

.field final vA:Ljava/lang/String;

.field final vz:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/ly$a;->vz:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/kingroot/kinguser/ly$a;->vA:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/kingroot/kinguser/ly$a;->aZ:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/kingroot/kinguser/ly$a;->minSdkVersion:I

    .line 35
    iput p5, p0, Lcom/kingroot/kinguser/ly$a;->maxSdkVersion:I

    .line 36
    return-void
.end method

.method static a(Lcom/king/uranus/l;)Lcom/kingroot/kinguser/ly$a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/king/uranus/l;->aN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/king/uranus/l;->aO:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/king/uranus/l;->aP:Ljava/lang/String;

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    return-object v0

    .line 58
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/king/uranus/l;->aQ:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 59
    iget-object v1, p0, Lcom/king/uranus/l;->aR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/ly$a;

    iget-object v1, p0, Lcom/king/uranus/l;->aN:Ljava/lang/String;

    iget-object v2, p0, Lcom/king/uranus/l;->aO:Ljava/lang/String;

    iget-object v3, p0, Lcom/king/uranus/l;->aP:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ly$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method
