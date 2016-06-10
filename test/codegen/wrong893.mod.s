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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 10 of <array 8 of <array 6 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v1       <char> %ebp-19 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v1 <- 98
    movb    %al, -19(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   3:     return 1
    jmp     l_f0_exit              
l_f0_8_while_cond:
    movl    $99, %eax               #   5:     if     99 = 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_9_while_body      
    jmp     l_f0_7                  #   6:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   8:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_0:
    call    dummyBOOLfunc           #  12:     call   t3 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_17                 #  13:     goto   17
    jmp     l_f0_17                 #  14:     goto   17
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_18                 #  16:     goto   18
l_f0_17:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f0_18:
    movl    $0, %eax                #  20:     if     0 = t4 goto 13_if_true
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  21:     goto   14_if_false
l_f0_13_if_true:
    movl    $98, %eax               #  23:     assign v1 <- 98
    movb    %al, -19(%ebp)         
    movl    $0, %eax                #  24:     return 0
    jmp     l_f0_exit              
    movl    $99398, %eax            #  25:     if     99398 >= 64042 goto 25
    movl    $64042, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_25                
    jmp     l_f0_26                 #  26:     goto   26
l_f0_25:
    movl    $1, %eax                #  28:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_27                 #  29:     goto   27
l_f0_26:
    movl    $0, %eax                #  31:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f0_27:
    movzbl  -17(%ebp), %eax         #  33:     return t5
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  34:     call   t6 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f0_12                 #  35:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 10 of <array 8 of <array 6 of <array 3 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 2 of <array 3 of <array 4 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 8 of <array 9 of <array 8 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -1488(%ebp)  1464  [ $v4       <array 1 of <array 10 of <array 8 of <array 6 of <array 3 of <bool>>>>>> %ebp-1488 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1476, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $369, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1488(%ebp)          # local array 'v4': 5 dimensions
    movl    $1,-1484(%ebp)          #   dimension 1: 1 elements
    movl    $10,-1480(%ebp)         #   dimension 2: 10 elements
    movl    $8,-1476(%ebp)          #   dimension 3: 8 elements
    movl    $6,-1472(%ebp)          #   dimension 4: 6 elements
    movl    $3,-1468(%ebp)          #   dimension 5: 3 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_5_if_false         #   1:     goto   5_if_false
    jmp     l_f1_3                  #   2:     goto   3
l_f1_5_if_false:
l_f1_3:
l_f1_7_while_cond:
    movl    $18110, %eax            #   6:     if     18110 < 66057 goto 8_while_body
    movl    $66057, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #   7:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   9:     goto   7_while_cond
l_f1_6:
l_f1_11_while_cond:
    movl    $0, %eax                #  12:     if     0 # 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_15_while_cond:
    movl    $33163, %eax            #  19:     add    t1 <- 33163, 22806
    movl    $22806, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     if     t1 > 12948 goto 16_while_body
    movl    $12948, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_16_while_body     
    jmp     l_f1_14                 #  21:     goto   14
l_f1_16_while_body:
    call    WriteLn                 #  23:     call   WriteLn
    jmp     l_f1_15_while_cond      #  24:     goto   15_while_cond
l_f1_14:
    leal    -1488(%ebp), %eax       #  26:     &()    t2 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  28:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $1476, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 7 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 10 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     assign v2 <- 99
    movb    %al, 16(%ebp)          
    jmp     l_f2_4_if_false         #   2:     goto   4_if_false
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
    movl    $100, %eax              #   4:     assign v2 <- 100
    movb    %al, 16(%ebp)          
    jmp     l_f2_10                 #   5:     goto   10
l_f2_10:
    jmp     l_f2_2                  #   7:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $69060, %eax            #   2:     assign v0 <- 69060
    movl    %eax, v0               
l_test_4_while_cond:
    jmp     l_test_5_while_body     #   4:     goto   5_while_body
l_test_5_while_body:
    movl    $27231, %eax            #   6:     assign v0 <- 27231
    movl    %eax, v0               
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #   8:     goto   9_while_cond
    movl    $100, %eax              #   9:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_4_while_cond     #  10:     goto   4_while_cond
    leal    _str_1, %eax            #  11:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
