.class public Lcom/kingroot/kinguser/baw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/baw;->ber:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/kingroot/kinguser/baw;->ber:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public static VY()V
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/baw$1;

    invoke-direct {v5}, Lcom/kingroot/kinguser/baw$1;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 95
    return-void
.end method

.method static synthetic VZ()Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kingroot/kinguser/baw;->ber:Ljava/util/List;

    return-object v0
.end method
