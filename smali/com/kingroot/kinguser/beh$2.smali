.class synthetic Lcom/kingroot/kinguser/beh$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/beh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic bla:[I

.field static final synthetic blb:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/bea$a;->values()[Lcom/kingroot/kinguser/bea$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kingroot/kinguser/beh$2;->blb:[I

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/beh$2;->blb:[I

    sget-object v1, Lcom/kingroot/kinguser/bea$a;->bkj:Lcom/kingroot/kinguser/bea$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bea$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/beh$2;->blb:[I

    sget-object v1, Lcom/kingroot/kinguser/bea$a;->bki:Lcom/kingroot/kinguser/bea$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bea$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 66
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/bec;->values()[Lcom/kingroot/kinguser/bec;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kingroot/kinguser/beh$2;->bla:[I

    :try_start_2
    sget-object v0, Lcom/kingroot/kinguser/beh$2;->bla:[I

    sget-object v1, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bec;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/kingroot/kinguser/beh$2;->bla:[I

    sget-object v1, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bec;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 79
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
