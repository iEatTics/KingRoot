.class public Lcom/kingroot/kinguser/security/entity/ActionRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# instance fields
.field public flag:I

.field public when:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->flag:I

    .line 43
    iput-wide p2, p0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->when:J

    .line 44
    return-void
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/security/entity/ActionRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lcom/kingroot/kinguser/security/entity/ActionRecord;->kJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 66
    return-void
.end method

.method public static kI(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/security/entity/ActionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/security/entity/ActionRecord;->kJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private static kJ(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/zl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final h(IJ)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->flag:I

    .line 48
    iput-wide p2, p0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->when:J

    .line 49
    return-void
.end method
