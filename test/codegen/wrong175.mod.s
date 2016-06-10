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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
l_f0_1_while_cond:
    movl    $62063, %eax            #   1:     if     62063 < 88061 goto 2_while_body
    movl    $88061, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_exit              
    call    ReadInt                 #  10:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 4 of <array 3 of <array 1 of <array 4 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t3
    jmp     l_f1_exit              
    call    dummyINTfunc            #   4:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    movl    $28635, %eax            #   1:     if     28635 # 46147 goto 5
    movl    $46147, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #   2:     goto   6
l_f2_5:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #   9:     return t3
    jmp     l_f2_exit              
    movl    $0, %eax                #  10:     return 0
    jmp     l_f2_exit              
l_f2_11_while_cond:
    movl    $100, %eax              #  12:     if     100 < 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  15:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_1                  #  17:     goto   1
l_f2_1:
    jmp     l_f2_15                 #  19:     goto   15
    jmp     l_f2_16                 #  20:     goto   16
    jmp     l_f2_16                 #  21:     goto   16
l_f2_15:
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_17                 #  24:     goto   17
l_f2_16:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f2_17:
    movzbl  -18(%ebp), %eax         #  28:     return t4
    jmp     l_f2_exit              

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    movl    $22744, %eax            #   3:     if     22744 > 93698 goto 8_if_true
    movl    $93698, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_8_if_true       
    jmp     l_test_9_if_false       #   4:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   6:     goto   7
l_test_9_if_false:
l_test_7:
    call    dummyINTfunc            #   9:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_4                #  10:     goto   4
l_test_4:
    jmp     l_test_2_while_cond     #  12:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    movl    $99, %eax               #  15:     if     99 = 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  16:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_19_if_false      #  18:     goto   19_if_false
    jmp     l_test_17               #  19:     goto   17
l_test_19_if_false:
l_test_17:
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  23:     goto   21_while_cond
    call    WriteLn                 #  24:     call   WriteLn
    movl    $1, %eax                #  25:     if     1 = 1 goto 25_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_25_if_true      
    jmp     l_test_26_if_false      #  26:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  28:     goto   24
l_test_26_if_false:
l_test_24:
    movl    $6666, %eax             #  31:     if     6666 > 99372 goto 29
    movl    $99372, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_29              
    jmp     l_test_30               #  32:     goto   30
l_test_29:
    movl    $1, %eax                #  34:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_31               #  35:     goto   31
l_test_30:
    movl    $0, %eax                #  37:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_31:
    movzbl  -17(%ebp), %eax         #  39:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_13               #  40:     goto   13
l_test_15_if_false:
l_test_13:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
