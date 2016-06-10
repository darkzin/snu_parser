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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
    jmp     l_f0_2                  #   3:     goto   2
    jmp     l_f0_2                  #   4:     goto   2
    jmp     l_f0_2                  #   5:     goto   2
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #  11:     return t6
    jmp     l_f0_exit              
l_f0_12_while_cond:
    movl    $98, %eax               #  13:     if     98 < 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_13_while_body     
    jmp     l_f0_11                 #  14:     goto   11
l_f0_13_while_body:
    movl    $66106, %eax            #  16:     if     66106 < 73068 goto 16
    movl    $73068, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_16                
    jmp     l_f0_17                 #  17:     goto   17
l_f0_16:
    movl    $1, %eax                #  19:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_18                 #  20:     goto   18
l_f0_17:
    movl    $0, %eax                #  22:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_18:
    movzbl  -14(%ebp), %eax         #  24:     assign v1 <- t7
    movb    %al, -21(%ebp)         
    jmp     l_f0_12_while_cond      #  25:     goto   12_while_cond
l_f0_11:
    jmp     l_f0_22_if_false        #  27:     goto   22_if_false
    call    ReadInt                 #  28:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_20                 #  29:     goto   20
l_f0_22_if_false:
l_f0_20:

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t6 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
    movl    $65669, %eax            #   5:     mul    t7 <- 65669, 17830
    movl    $17830, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     assign v3 <- t7
    movl    %eax, -28(%ebp)        
    call    dummyINTfunc            #   7:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 42 of <array 51 of <array 13 of <array 48 of <array 46 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    movl    $1, %eax                #   2:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $0, %eax                #   5:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   7:     param  1 <- t6
    pushl   %eax                   
    movl    $78746, %eax            #   8:     if     78746 > 53230 goto 5
    movl    $53230, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   9:     goto   6
l_f2_5:
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_7:
    movzbl  -15(%ebp), %eax         #  16:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  17:     call   t8 <- f1
    addl    $8, %esp               
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  18:     return t8
    jmp     l_f2_exit              
l_f2_10_while_cond:
    movl    $0, %eax                #  20:     param  1 <- 0
    pushl   %eax                   
    movl    $99, %eax               #  21:     if     99 > 98 goto 13
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_13                
    jmp     l_f2_14                 #  22:     goto   14
l_f2_13:
    movl    $1, %eax                #  24:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_15                 #  25:     goto   15
l_f2_14:
    movl    $0, %eax                #  27:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f2_15:
    movzbl  -17(%ebp), %eax         #  29:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  30:     call   t10 <- f1
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  31:     if     t10 # 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  32:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  34:     goto   10_while_cond
l_f2_9:
l_f2_22_while_cond:
    jmp     l_f2_21                 #  37:     goto   21
    jmp     l_f2_22_while_cond      #  38:     goto   22_while_cond
l_f2_21:
    jmp     l_f2_17                 #  40:     goto   17
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 > 93862 goto 3_if_true
    movl    $93862, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   6:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
    movl    $61638, %eax            #  10:     add    t1 <- 61638, 36146
    movl    $36146, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t2 <- t1, 34561
    movl    $34561, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t3 <- t2, 18589
    movl    $18589, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     if     t3 = 60077 goto 8
    movl    $60077, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8               
    jmp     l_test_9                #  14:     goto   9
l_test_8:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_10               #  17:     goto   10
l_test_9:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_10:
    movzbl  -29(%ebp), %eax         #  21:     param  1 <- t4
    pushl   %eax                   
    movl    $0, %eax                #  22:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #  23:     call   t5 <- f1
    addl    $8, %esp               
    movb    %al, -30(%ebp)         

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
