.class public Lcom/kingroot/kinguser/bgl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bgl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final boQ:Ljava/lang/String;

.field public final boR:Ljava/lang/String;

.field public final boS:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    invoke-static {p1}, Lcom/kingroot/kinguser/bgl;->iJ(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bgl$a;->boQ:Ljava/lang/String;

    .line 345
    iput-object p2, p0, Lcom/kingroot/kinguser/bgl$a;->boR:Ljava/lang/String;

    .line 346
    iput-boolean p3, p0, Lcom/kingroot/kinguser/bgl$a;->boS:Z

    .line 347
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/kingroot/kinguser/bgl$a;->boQ:Ljava/lang/String;

    .line 355
    iput-object p2, p0, Lcom/kingroot/kinguser/bgl$a;->boR:Ljava/lang/String;

    .line 356
    iput-boolean p3, p0, Lcom/kingroot/kinguser/bgl$a;->boS:Z

    .line 357
    return-void
.end method
