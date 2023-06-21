.class Lcom/kingroot/kinguser/aki$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private avp:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/aki$a;->avp:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/reflect/Method;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v2

    .line 78
    :cond_1
    const/4 v1, -0x1

    .line 79
    const-string v3, "enqueueNotification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    array-length v4, p2

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, p2, v3

    .line 82
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 83
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    :goto_2
    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_3
    move v2, v0

    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 93
    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/aki$a;->avp:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/kingroot/kinguser/aki$a;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aki$a;->avp:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
