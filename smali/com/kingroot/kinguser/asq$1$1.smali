.class Lcom/kingroot/kinguser/asq$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNp:Lcom/kingroot/kinguser/asq$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asq$1;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/kingroot/kinguser/asq$1$1;->aNp:Lcom/kingroot/kinguser/asq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/asq$1$1;->aNp:Lcom/kingroot/kinguser/asq$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/asq$1;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    iget-object v1, p0, Lcom/kingroot/kinguser/asq$1$1;->aNp:Lcom/kingroot/kinguser/asq$1;

    iget v1, v1, Lcom/kingroot/kinguser/asq$1;->aNn:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/asq$1$1;->aNp:Lcom/kingroot/kinguser/asq$1;

    iget-wide v2, v2, Lcom/kingroot/kinguser/asq$1;->aNo:J

    iget-object v4, p0, Lcom/kingroot/kinguser/asq$1$1;->aNp:Lcom/kingroot/kinguser/asq$1;

    iget-object v4, v4, Lcom/kingroot/kinguser/asq$1;->aNm:Lcom/kingroot/kinguser/asq$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/asq;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;IJLcom/kingroot/kinguser/asq$a;)V

    .line 84
    return-void
.end method
