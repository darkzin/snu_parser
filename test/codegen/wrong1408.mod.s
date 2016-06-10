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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 81 of <array 34 of <array 22 of <array 72 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 54 of <array 95 of <array 46 of <array 88 of <array 62 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t3
    movb    %al, 12(%ebp)          
    jmp     l_f0_exit              
    call    dummyINTfunc            #   3:     call   t4 <- dummyINTfunc
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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 54 of <array 95 of <array 46 of <array 88 of <array 62 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 81 of <array 34 of <array 22 of <array 72 of <array 17 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 44 of <array 98 of <array 76 of <array 38 of <array 55 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 41 of <array 98 of <array 32 of <array 56 of <bool>>>>>>> %ebp+20 ]
    #   -74159764(%ebp)  74159736  [ $v4       <array 81 of <array 34 of <array 22 of <array 72 of <array 17 of <bool>>>>>> %ebp-74159764 ]
    #   -1361666668(%ebp)  1287506904  [ $v5       <array 54 of <array 95 of <array 46 of <array 88 of <array 62 of <bool>>>>>> %ebp-1361666668 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1361666656, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $340416664, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-74159764(%ebp)      # local array 'v4': 5 dimensions
    movl    $81,-74159760(%ebp)     #   dimension 1: 81 elements
    movl    $34,-74159756(%ebp)     #   dimension 2: 34 elements
    movl    $22,-74159752(%ebp)     #   dimension 3: 22 elements
    movl    $72,-74159748(%ebp)     #   dimension 4: 72 elements
    movl    $17,-74159744(%ebp)     #   dimension 5: 17 elements
    movl    $5,-1361666668(%ebp)    # local array 'v5': 5 dimensions
    movl    $54,-1361666664(%ebp)   #   dimension 1: 54 elements
    movl    $95,-1361666660(%ebp)   #   dimension 2: 95 elements
    movl    $46,-1361666656(%ebp)   #   dimension 3: 46 elements
    movl    $88,-1361666652(%ebp)   #   dimension 4: 88 elements
    movl    $62,-1361666648(%ebp)   #   dimension 5: 62 elements

    # function body
l_f1_1_while_cond:
    movl    $53228, %eax            #   1:     if     53228 <= 9143 goto 2_while_body
    movl    $9143, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    leal    -1361666668(%ebp), %eax #   4:     &()    t3 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  3 <- t3
    pushl   %eax                   
    movl    $0, %eax                #   6:     param  2 <- 0
    pushl   %eax                   
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     param  1 <- t4
    pushl   %eax                   
    leal    -74159764(%ebp), %eax   #   9:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  11:     call   f0
    addl    $16, %esp              
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    movl    $100, %eax              #  14:     if     100 < 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  15:     goto   7_if_false
l_f1_6_if_true:
    movl    $98, %eax               #  17:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  18:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_5                  #  19:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyINTfunc            #  22:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $1361666656, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 24 of <array 36 of <array 53 of <array 39 of <array 52 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 39 of <array 87 of <array 86 of <array 16 of <array 81 of <char>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    movl    $100, %eax              #   2:     if     100 > 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   5:     goto   2_while_cond
l_f2_1:
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    jmp     l_test_5                #   1:     goto   5
    jmp     l_test_5                #   2:     goto   5
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $47653, %eax            #   8:     if     47653 # 82548 goto 8
    movl    $82548, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_8               
    jmp     l_test_9                #   9:     goto   9
l_test_8:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  16:     if     t0 = t1 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #  17:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #  19:     goto   1_while_cond
l_test_0:
l_test_13_while_cond:
    jmp     l_test_12               #  22:     goto   12
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  24:     goto   16_while_cond
    movl    $100, %eax              #  25:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_21_if_false      #  26:     goto   21_if_false
    jmp     l_test_19               #  27:     goto   19
l_test_21_if_false:
l_test_19:
l_test_23_while_cond:
    jmp     l_test_22               #  31:     goto   22
    jmp     l_test_23_while_cond    #  32:     goto   23_while_cond
l_test_22:
    jmp     l_test_13_while_cond    #  34:     goto   13_while_cond
l_test_12:
    call    dummyCHARfunc           #  36:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
