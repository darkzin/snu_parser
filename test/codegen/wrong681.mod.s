##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 10 of <array 7 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 4 of <array 3 of <array 4 of <array 7 of <int>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t2
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #   2:     assign v3 <- 99
    movb    %al, -15(%ebp)         
    movl    $1, %eax                #   3:     if     1 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    movl    $75923, %eax            #   6:     if     75923 > 89962 goto 7_if_true
    movl    $89962, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  13:     goto   11_while_cond
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_2                  #  15:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 9 of <array 1 of <array 8 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #    -56(%ebp)   4  [ $v1       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $81801, %eax            #   4:     return 81801
    jmp     l_f1_exit              
    movl    $66680, %eax            #   5:     if     66680 # 29944 goto 6_if_true
    movl    $29944, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    movl    $36891, %eax            #  13:     assign v1 <- 36891
    movl    %eax, -56(%ebp)        
    movl    $27396, %eax            #  14:     div    t2 <- 27396, 64382
    movl    $64382, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t3 <- t2, 83161
    movl    $83161, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t4 <- t3, 61707
    movl    $61707, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     sub    t5 <- t4, 89909
    movl    $89909, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t6 <- t5, 97423
    movl    $97423, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     sub    t7 <- t6, 13227
    movl    $13227, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     sub    t8 <- t7, 52783
    movl    $52783, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     sub    t9 <- t8, 68128
    movl    $68128, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t10 <- t9, 91257
    movl    $91257, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 82124
    movl    $82124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 1 of <array 5 of <array 4 of <array 2 of <int>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    movl    $97, %eax               #   2:     if     97 = 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    movl    $99, %eax               #   6:     if     99 > 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_7_while_body      
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   9:     goto   6_while_cond
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  12:     goto   10_while_cond
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
l_f2_13_while_cond:
    movl    $0, %eax                #  16:     if     0 # 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14_while_body     
    jmp     l_f2_12                 #  17:     goto   12
l_f2_14_while_body:
    jmp     l_f2_exit              
l_f2_18_while_cond:
    call    dummyCHARfunc           #  21:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  22:     if     98 > t3 goto 19_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_19_while_body     
    jmp     l_f2_17                 #  23:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  25:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_13_while_cond      #  27:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #   7:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_6_if_true        #   8:     goto   6_if_true
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
l_test_6_if_true:
    movl    $10068, %eax            #  11:     assign v1 <- 10068
    movl    %eax, v1               
    jmp     l_test_5                #  12:     goto   5
l_test_7_if_false:
l_test_5:
l_test_11_while_cond:
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     if     t1 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  18:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  20:     goto   11_while_cond
l_test_10:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
