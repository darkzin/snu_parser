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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $100, %eax              #   3:     assign v1 <- 100
    movb    %al, -17(%ebp)         
    jmp     l_f0_0                  #   4:     goto   0
l_f0_0:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_8                  #   8:     goto   8
l_f0_8:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_4                  #   1:     goto   4
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_5                  #   3:     goto   5
l_f1_4:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #  10:     if     t3 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_while_body:
    movl    $0, %eax                #  13:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_12_if_false        #  14:     goto   12_if_false
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $53847, %eax            #  18:     assign v0 <- 53847
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  19:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  20:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  22:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  23:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 < t3 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t4
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_f2_7_while_cond:
    movl    $13251, %eax            #  12:     if     13251 > 77298 goto 8_while_body
    movl    $77298, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8_while_body      
    jmp     l_f2_8_while_body       #  13:     goto   8_while_body
    jmp     l_f2_8_while_body       #  14:     goto   8_while_body
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  16:     goto   7_while_cond

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
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
    jmp     l_test_exit            
    movl    $48795, %eax            #   1:     if     48795 < 31989 goto 5_if_true
    movl    $31989, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   2:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   4:     goto   4
l_test_6_if_false:
l_test_4:
    call    dummyBOOLfunc           #   7:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_9                #   8:     goto   9
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_0                #  11:     goto   0
l_test_0:
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_15_while_cond:
    jmp     l_test_14               #  15:     goto   14
l_test_20_while_cond:
    movl    $99, %eax               #  17:     if     99 >= 97 goto 21_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_21_while_body   
    jmp     l_test_19               #  18:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  20:     goto   20_while_cond
l_test_19:
    movl    $0, %eax                #  22:     if     0 # 1 goto 24_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_24_if_true      
    jmp     l_test_25_if_false      #  23:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  25:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_15_while_cond    #  28:     goto   15_while_cond
l_test_14:
    jmp     l_test_29_if_false      #  30:     goto   29_if_false
    movl    $100, %eax              #  31:     if     100 = 97 goto 31_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_31_if_true      
    jmp     l_test_32_if_false      #  32:     goto   32_if_false
l_test_31_if_true:
    call    dummyCHARfunc           #  34:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_30               #  36:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_27               #  39:     goto   27
l_test_29_if_false:
l_test_27:
    call    WriteLn                 #  42:     call   WriteLn
    jmp     l_test_39_if_false      #  43:     goto   39_if_false
    jmp     l_test_42_if_false      #  44:     goto   42_if_false
    jmp     l_test_40               #  45:     goto   40
l_test_42_if_false:
l_test_40:
    jmp     l_test_exit            
    jmp     l_test_37               #  49:     goto   37
l_test_39_if_false:
l_test_37:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
