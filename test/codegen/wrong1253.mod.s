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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 64 of <array 99 of <array 82 of <array 96 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $43834, %eax            #   1:     if     43834 <= 86312 goto 2
    movl    $86312, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    call    ReadInt                 #  10:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t10      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 38 of <array 64 of <array 99 of <array 82 of <array 96 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 38 of <array 64 of <array 99 of <array 82 of <array 96 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <bool> %ebp-42 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 19 of <array 32 of <array 63 of <array 33 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 31 of <array 21 of <array 6 of <array 22 of <array 94 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -1895325764(%ebp)  1895325720  [ $v4       <array 38 of <array 64 of <array 99 of <array 82 of <array 96 of <bool>>>>>> %ebp-1895325764 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1895325752, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $473831438, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1895325764(%ebp)    # local array 'v4': 5 dimensions
    movl    $38,-1895325760(%ebp)   #   dimension 1: 38 elements
    movl    $64,-1895325756(%ebp)   #   dimension 2: 64 elements
    movl    $99,-1895325752(%ebp)   #   dimension 3: 99 elements
    movl    $82,-1895325748(%ebp)   #   dimension 4: 82 elements
    movl    $96,-1895325744(%ebp)   #   dimension 5: 96 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
    call    dummyINTfunc            #   4:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  2 <- t1
    pushl   %eax                   
    leal    -1895325764(%ebp), %eax #   6:     &()    t2 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  1 <- t2
    pushl   %eax                   
    movl    $80006, %eax            #   8:     mul    t3 <- 80006, 79070
    movl    $79070, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     add    t4 <- t3, 456
    movl    $456, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $36244, %eax            #  10:     if     36244 # t4 goto 6
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_6                 
    jmp     l_f1_7                  #  11:     goto   7
l_f1_6:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_8                  #  14:     goto   8
l_f1_7:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_f1_8:
    movzbl  -33(%ebp), %eax         #  18:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  19:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -34(%ebp)         
    movl    $14200, %eax            #  20:     param  2 <- 14200
    pushl   %eax                   
    leal    -1895325764(%ebp), %eax #  21:     &()    t7 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     param  1 <- t7
    pushl   %eax                   
    jmp     l_f1_16                 #  23:     goto   16
    movl    $1, %eax                #  24:     assign t8 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f1_17                 #  25:     goto   17
l_f1_16:
    movl    $0, %eax                #  27:     assign t8 <- 0
    movb    %al, -41(%ebp)         
l_f1_17:
    movl    $0, %eax                #  29:     if     0 # t8 goto 11
    movzbl  -41(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_11                
    jmp     l_f1_12                 #  30:     goto   12
l_f1_11:
    movl    $1, %eax                #  32:     assign t9 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_f1_13                 #  33:     goto   13
l_f1_12:
    movl    $0, %eax                #  35:     assign t9 <- 0
    movb    %al, -42(%ebp)         
l_f1_13:
    movzbl  -42(%ebp), %eax         #  37:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  38:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         

l_f1_exit:
    # epilogue
    addl    $1895325752, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 4 of <array 27 of <array 55 of <array 84 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 81 of <array 24 of <array 28 of <array 48 of <array 15 of <bool>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v4       <char> %ebp-29 ]

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
    movl    $98, %eax               #   0:     if     98 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $98, %eax               #   4:     if     98 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    movl    $27595, %eax            #   9:     return 27595
    jmp     l_f2_exit              
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $24090, %eax            #  15:     mul    t1 <- 24090, 69662
    movl    $69662, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     mul    t2 <- t1, 70015
    movl    $70015, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     div    t3 <- t2, 83929
    movl    $83929, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     return t3
    jmp     l_f2_exit              
l_f2_14_while_cond:
    movl    $33771, %eax            #  20:     assign v3 <- 33771
    movl    %eax, -28(%ebp)        
    movl    $98, %eax               #  21:     assign v4 <- 98
    movb    %al, -29(%ebp)         
    movl    $66606, %eax            #  22:     return 66606
    jmp     l_f2_exit              
    jmp     l_f2_14_while_cond      #  23:     goto   14_while_cond

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   2:     goto   1_while_cond
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   4:     assign v0 <- 100
    movb    %al, v0                
l_test_8_while_cond:
    jmp     l_test_12               #   6:     goto   12
    jmp     l_test_9_while_body     #   7:     goto   9_while_body
l_test_12:
    jmp     l_test_9_while_body     #   9:     goto   9_while_body
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  11:     goto   8_while_cond
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
