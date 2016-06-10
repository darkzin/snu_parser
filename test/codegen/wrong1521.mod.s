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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 17 of <array 48 of <array 1 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t6
    jmp     l_f0_exit              
l_f0_3_while_cond:
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t7 # 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 54 of <array 17 of <array 48 of <array 1 of <array 1 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 62 of <array 90 of <array 41 of <array 14 of <array 14 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 68 of <array 57 of <array 85 of <array 33 of <array 7 of <int>>>>>>> %ebp+16 ]
    #   -44116(%ebp)  44088  [ $v4       <array 54 of <array 17 of <array 48 of <array 1 of <array 1 of <bool>>>>>> %ebp-44116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44104, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11026, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-44116(%ebp)         # local array 'v4': 5 dimensions
    movl    $54,-44112(%ebp)        #   dimension 1: 54 elements
    movl    $17,-44108(%ebp)        #   dimension 2: 17 elements
    movl    $48,-44104(%ebp)        #   dimension 3: 48 elements
    movl    $1,-44100(%ebp)         #   dimension 4: 1 elements
    movl    $1,-44096(%ebp)         #   dimension 5: 1 elements

    # function body
    jmp     l_f1_exit              
    call    ReadInt                 #   1:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_4                  #   2:     goto   4
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_5                  #   4:     goto   5
l_f1_4:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f1_5:
    movzbl  -17(%ebp), %eax         #   8:     param  1 <- t7
    pushl   %eax                   
    leal    -44116(%ebp), %eax      #   9:     &()    t8 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  11:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $44104, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 54 of <array 24 of <array 50 of <array 28 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 83 of <array 24 of <array 66 of <array 83 of <array 98 of <char>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

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
l_f2_1_while_cond:
    movl    $26489, %eax            #   1:     if     26489 = 95395 goto 2_while_body
    movl    $95395, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
    movl    $98, %eax               #   7:     if     98 <= 100 goto 9
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_9                 
    jmp     l_f2_10                 #   8:     goto   10
l_f2_9:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_11:
    movzbl  -13(%ebp), %eax         #  15:     assign v4 <- t6
    movb    %al, -21(%ebp)         
    jmp     l_f2_exit              
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  18:     goto   15_while_cond
    jmp     l_f2_exit              
    movl    $26940, %eax            #  20:     if     26940 # 90541 goto 19_if_true
    movl    $90541, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  21:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  23:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_5                  #  26:     goto   5
l_f2_7_if_false:
l_f2_5:
    call    dummyINTfunc            #  29:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 54 of <array 17 of <array 48 of <array 1 of <array 1 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
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
    movl    $75002, %eax            #   0:     div    t0 <- 75002, 73555
    movl    $73555, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 59784
    movl    $59784, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $7638, %eax             #   4:     if     7638 <= 8247 goto 3_while_body
    movl    $8247, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   5:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    movl    $15154, %eax            #   8:     if     15154 <= 16268 goto 7_while_body
    movl    $16268, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_7_while_body    
    jmp     l_test_5                #   9:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  11:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  14:     goto   2_while_cond
l_test_1:
    movl    $34027, %eax            #  16:     if     34027 <= 55303 goto 11
    movl    $55303, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_11              
    jmp     l_test_12               #  17:     goto   12
l_test_11:
    movl    $1, %eax                #  19:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_13               #  20:     goto   13
l_test_12:
    movl    $0, %eax                #  22:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_13:
    movzbl  -21(%ebp), %eax         #  24:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  25:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  27:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_17_if_false      #  28:     goto   17_if_false
    call    dummyCHARfunc           #  29:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  31:     goto   20_while_cond
    movl    $93175, %eax            #  32:     assign v0 <- 93175
    movl    %eax, v0               
    jmp     l_test_15               #  33:     goto   15
l_test_17_if_false:
l_test_15:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 54 of <array 17 of <array 48 of <array 1 of <array 1 of <bool>>>>>>
    .long    5
    .long   54
    .long   17
    .long   48
    .long    1
    .long    1
    .skip 44064








    # end of global data section
    #-----------------------------------------

    .end
##################################################
