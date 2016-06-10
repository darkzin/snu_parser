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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t9       <bool> %ebp-38 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -39(%ebp)   1  [ $v2       <bool> %ebp-39 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $17083, %eax            #   0:     sub    t3 <- 17083, 47532
    movl    $47532, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $88311, %eax            #   1:     div    t4 <- 88311, 87408
    movl    $87408, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     div    t5 <- t4, 22669
    movl    $22669, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t6 <- t5, 95416
    movl    $95416, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t7 <- t3, t6
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     return t7
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   6:     call   t8 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #   7:     if     t8 = 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   8:     goto   3
l_f0_2:
    movl    $1, %eax                #  10:     assign t9 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_f0_4                  #  11:     goto   4
l_f0_3:
    movl    $0, %eax                #  13:     assign t9 <- 0
    movb    %al, -38(%ebp)         
l_f0_4:
    movzbl  -38(%ebp), %eax         #  15:     assign v2 <- t9
    movb    %al, -39(%ebp)         
    jmp     l_f0_7                  #  16:     goto   7
l_f0_7:
    movl    $1, %eax                #  18:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_9                  #  19:     goto   9
    movl    $0, %eax                #  20:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_9:
    movzbl  -13(%ebp), %eax         #  22:     assign v2 <- t10
    movb    %al, -39(%ebp)         

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   1:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    movl    $0, %eax                #   2:     if     0 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   3:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    jmp     l_f1_9                  #   9:     goto   9
    jmp     l_f1_10_while_cond      #  10:     goto   10_while_cond
l_f1_9:
    movl    $1, %eax                #  12:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    jmp     l_f1_1                  #  13:     goto   1
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $46409, %eax            #   3:     if     46409 > 50102 goto 3_while_body
    movl    $50102, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    movl    $11503, %eax            #   7:     if     11503 = 99593 goto 7_while_body
    movl    $99593, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  10:     goto   6_while_cond
l_f2_5:
    movl    $99, %eax               #  12:     return 99
    jmp     l_f2_exit              
    movl    $49591, %eax            #  13:     assign v1 <- 49591
    movl    %eax, -20(%ebp)        
l_f2_12_while_cond:
    jmp     l_f2_11                 #  15:     goto   11
    jmp     l_f2_12_while_cond      #  16:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_2_while_cond       #  18:     goto   2_while_cond
l_f2_1:
    movl    $42909, %eax            #  20:     if     42909 > 4029 goto 15
    movl    $4029, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_15                
    jmp     l_f2_16                 #  21:     goto   16
l_f2_15:
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_17                 #  24:     goto   17
l_f2_16:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_17:
    movzbl  -14(%ebp), %eax         #  28:     assign v2 <- t4
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, v0                
    call    dummyINTfunc            #   2:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $99, %eax               #   4:     param  0 <- 99
    pushl   %eax                   
    call    f2                      #   5:     call   t1 <- f2
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_8_while_cond:
    jmp     l_test_9_while_body     #   8:     goto   9_while_body
l_test_9_while_body:
    call    dummyProcedure          #  10:     call   dummyProcedure
    movl    $100, %eax              #  11:     if     100 > 97 goto 13
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_13              
    jmp     l_test_14               #  12:     goto   14
l_test_13:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_15               #  15:     goto   15
l_test_14:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_15:
    movzbl  -18(%ebp), %eax         #  19:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_exit            
l_test_19_while_cond:
    movl    $48081, %eax            #  22:     if     48081 > 88359 goto 20_while_body
    movl    $88359, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_20_while_body   
    jmp     l_test_18               #  23:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  25:     goto   19_while_cond
l_test_18:
    jmp     l_test_8_while_cond     #  27:     goto   8_while_cond
    movl    $0, %eax                #  28:     assign v1 <- 0
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
