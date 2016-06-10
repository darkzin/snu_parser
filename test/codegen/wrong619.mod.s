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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $100, %eax              #   0:     if     100 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t5
    jmp     l_f0_exit              
    movl    $78067, %eax            #   9:     if     78067 <= 65206 goto 6
    movl    $65206, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_8:
    movzbl  -14(%ebp), %eax         #  17:     assign v2 <- t6
    movb    %al, -21(%ebp)         
    call    ReadInt                 #  18:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <char> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $26840, %eax            #   2:     assign v0 <- 26840
    movl    %eax, -24(%ebp)        
    movl    $60919, %eax            #   3:     if     60919 < 75022 goto 6
    movl    $75022, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #   4:     goto   7
l_f1_6:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
l_f1_7:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  11:     return t6
    jmp     l_f1_exit              
l_f1_11_while_cond:
    jmp     l_f1_10                 #  13:     goto   10
    jmp     l_f1_11_while_cond      #  14:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_1                  #  16:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  19:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  20:     assign v1 <- t7
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 = 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_7:
    jmp     l_f2_3                  #   4:     goto   3
    jmp     l_f2_3                  #   5:     goto   3
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #  11:     return t6
    jmp     l_f2_exit              
    movl    $52940, %eax            #  12:     if     52940 # 52106 goto 10_if_true
    movl    $52106, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    movl    $92962, %eax            #  15:     if     92962 # 33503 goto 14_if_true
    movl    $33503, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  16:     goto   15_if_false
l_f2_14_if_true:
    movl    $25598, %eax            #  18:     assign v0 <- 25598
    movl    %eax, -20(%ebp)        
    movl    $67108, %eax            #  19:     if     67108 = 81466 goto 19
    movl    $81466, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_19                
    jmp     l_f2_20                 #  20:     goto   20
l_f2_19:
    movl    $1, %eax                #  22:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_21                 #  23:     goto   21
l_f2_20:
    movl    $0, %eax                #  25:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_21:
    movzbl  -15(%ebp), %eax         #  27:     assign v1 <- t7
    movb    %al, -21(%ebp)         
    jmp     l_f2_13                 #  28:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_9                  #  31:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    jmp     l_test_5                #   9:     goto   5
    jmp     l_test_5                #  10:     goto   5
    jmp     l_test_5                #  11:     goto   5
    call    WriteLn                 #  12:     call   WriteLn
l_test_14_while_cond:
    movl    $0, %eax                #  14:     if     0 # 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_15_while_body   
    jmp     l_test_13               #  15:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  17:     goto   14_while_cond
l_test_13:
    jmp     l_test_6_while_cond     #  19:     goto   6_while_cond
l_test_5:
    movl    $75691, %eax            #  21:     add    t1 <- 75691, 81517
    movl    $81517, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     sub    t2 <- t1, 38850
    movl    $38850, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t3 <- t2, 51856
    movl    $51856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $23785, %eax            #  24:     if     23785 >= t3 goto 18
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_18              
    jmp     l_test_19               #  25:     goto   19
l_test_18:
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_20               #  28:     goto   20
l_test_19:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_20:
    movzbl  -29(%ebp), %eax         #  32:     assign v0 <- t4
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
