.class Lcom/kingroot/kinguser/ajc$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ajc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic atb:Lcom/kingroot/kinguser/ajc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ajc;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kingroot/kinguser/ajc$3;->atb:Lcom/kingroot/kinguser/ajc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 110
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 111
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 112
    iget-object v1, p0, Lcom/kingroot/kinguser/ajc$3;->atb:Lcom/kingroot/kinguser/ajc;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/kingroot/kinguser/ajc;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :cond_0
    return-void
.end method
