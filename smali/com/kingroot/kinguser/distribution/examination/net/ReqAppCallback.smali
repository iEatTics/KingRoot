.class public interface abstract Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            ">;)V"
        }
    .end annotation
.end method
