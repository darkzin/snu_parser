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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $v0       <bool> %ebp-20 ]

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
l_f0_1_while_cond:
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $17617, %eax            #   2:     if     17617 = t1 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $100, %eax              #   5:     return 100
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   6:     call   t2 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_10                 #   9:     goto   10
    jmp     l_f0_11                 #  10:     goto   11
l_f0_10:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_12                 #  13:     goto   12
l_f0_11:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f0_12:
    movl    $1, %eax                #  17:     if     1 # t3 goto 7_if_true
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  18:     goto   8_if_false
l_f0_7_if_true:
    movl    $1, %eax                #  20:     assign v0 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f0_6                  #  21:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    dummyCHARfunc           #  24:     call   t4 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  25:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <bool> %ebp-14 ]

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
    movl    $69309, %eax            #   0:     if     69309 <= 68275 goto 1
    movl    $68275, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t1
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_0                  #   3:     goto   0
    call    dummyBOOLfunc           #   4:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_12_if_false        #   6:     goto   12_if_false
    jmp     l_f2_10                 #   7:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_14                 #  12:     goto   14
    jmp     l_f2_15                 #  13:     goto   15
l_f2_14:
    movl    $1, %eax                #  15:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  16:     goto   16
l_f2_15:
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movzbl  -14(%ebp), %eax         #  20:     assign v1 <- t2
    movb    %al, 12(%ebp)          
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
    jmp     l_test_4                #   1:     goto   4
l_test_4:
    movl    $0, %eax                #   3:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $97, %eax               #   5:     if     97 >= 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_10_if_true      
    jmp     l_test_11_if_false      #   6:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #   8:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_1                #  12:     goto   1
l_test_1:
    call    f0                      #  14:     call   t0 <- f0
    movb    %al, -13(%ebp)         
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
