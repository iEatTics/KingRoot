.class final Lcom/kingroot/kinguser/bkk$2;
.super Lcom/kingroot/loader/common/KlServiceManager$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bkk;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/loader/common/KlServiceManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public aeB()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/kingroot/kinguser/bkl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bkl;-><init>()V

    return-object v0
.end method
