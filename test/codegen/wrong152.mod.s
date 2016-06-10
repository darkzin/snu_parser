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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_3_if_true          #   2:     goto   3_if_true
l_f0_3_if_true:
    jmp     l_f0_2                  #   4:     goto   2
l_f0_2:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <char> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
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
    movl    $48325, %eax            #   0:     if     48325 > 55454 goto 1_if_true
    movl    $55454, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $17402, %eax            #   3:     param  2 <- 17402
    pushl   %eax                   
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    movl    $1, %eax                #   6:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #   7:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   8:     if     100 >= t3 goto 5
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_5                 
    jmp     l_f1_6                  #   9:     goto   6
l_f1_5:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_7:
    movzbl  -15(%ebp), %eax         #  16:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $2248, %eax             #  20:     param  0 <- 2248
    pushl   %eax                   
    call    WriteInt                #  21:     call   WriteInt
    addl    $4, %esp               
    movl    $47911, %eax            #  22:     param  2 <- 47911
    pushl   %eax                   
    movl    $99, %eax               #  23:     param  1 <- 99
    pushl   %eax                   
    movl    $0, %eax                #  24:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  25:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  26:     if     t5 >= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  27:     goto   12_if_false
l_f1_11_if_true:
    movl    $92371, %eax            #  29:     assign v1 <- 92371
    movl    %eax, 12(%ebp)         
    jmp     l_f1_10                 #  30:     goto   10
l_f1_12_if_false:
l_f1_10:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 9 of <array 4 of <array 7 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 7 of <array 6 of <array 9 of <array 10 of <bool>>>>>>> %ebp+16 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     assign v0 <- t3
    movb    %al, 8(%ebp)           
    jmp     l_f2_exit              

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
    jmp     l_test_1                #   1:     goto   1
l_test_1:
    movl    $26899, %eax            #   3:     assign v0 <- 26899
    movl    %eax, v0               
    movl    $100, %eax              #   4:     if     100 <= 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #   5:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_13_if_false      #   7:     goto   13_if_false
    jmp     l_test_11               #   8:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $100, %eax              #  11:     if     100 >= 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  12:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  14:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $98, %eax               #  17:     if     98 <= 98 goto 19
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_19              
    jmp     l_test_20               #  18:     goto   20
l_test_19:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_21               #  21:     goto   21
l_test_20:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_21:
    movzbl  -14(%ebp), %eax         #  25:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_7                #  26:     goto   7
l_test_9_if_false:
l_test_7:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
