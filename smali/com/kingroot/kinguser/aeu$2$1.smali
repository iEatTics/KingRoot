.class Lcom/kingroot/kinguser/aeu$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aeu$2;->uK()Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afC:Lcom/kingroot/kinguser/aeu$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aeu$2;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/kingroot/kinguser/aeu$2$1;->afC:Lcom/kingroot/kinguser/aeu$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uA()V
    .locals 1

    .prologue
    .line 364
    invoke-static {}, Lcom/kingroot/kinguser/bja;->adx()Ljava/util/List;

    move-result-object v0

    .line 365
    invoke-static {v0}, Lcom/kingroot/kinguser/aeu;->Y(Ljava/util/List;)V

    .line 366
    return-void
.end method
