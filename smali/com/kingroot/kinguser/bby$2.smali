.class final Lcom/kingroot/kinguser/bby$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bby;->ks(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic anx:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingroot/kinguser/bby$2;->anx:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bby$2;->anx:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bby;->ku(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/bby;->hW(I)V

    .line 83
    return-void
.end method
